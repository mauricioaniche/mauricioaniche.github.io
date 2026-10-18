require 'nokogiri'

module SiteDiscovery
  PUNCTUATION = "-—–/.,:;!?()[]\"'“”‘’&*_#".freeze

  def self.normalize(text)
    text.to_s.downcase.unicode_normalize(:nfd).gsub(/\p{Mn}/, '').chars.map { |char|
      PUNCTUATION.include?(char) ? ' ' : char
    }.join.gsub(/[[:space:]]+/, ' ').strip
  end

  class Discovery < Jekyll::Generator
    safe true
    priority :normal

    def generate(site)
      documents = %w[blog media talks publications].flat_map { |name| site.collections.fetch(name).docs }.reject { |doc|
        doc.data['hide_from_list'] == true || doc.data['noindex'] == true || doc.data['sitemap'] == false ||
          (!site.future && doc.collection.label != 'media' && doc.date > site.time)
      }
      topics = site.data.fetch('ai_topics')
      config = site.data.fetch('index_terms')
      terms = (topics + config.fetch('entries')).map do |term|
        settings = config.fetch('topics').fetch(term['id'], term)
        term.merge('kind' => settings.fetch('kind', 'assuntos'),
                   'aliases' => ([term['label']] + settings.fetch('aliases', [])).uniq,
                   'categories' => settings.fetch('categories', []))
      end
      converter = site.find_converter_instance(Jekyll::Converters::Markdown)
      strip = Object.new.extend(Liquid::StandardFilters)
      corpus = documents.to_h do |doc|
        body = strip.strip_html(converter.convert(doc.content))
        source = %w[title display_title description authors source_name].map { |key| doc.data[key] }.join(' ') + ' ' + body
        [doc, { searchable: " #{SiteDiscovery.normalize(source)} ", body: Nokogiri::HTML.fragment(body).text.gsub(/[[:space:]]+/, ' ').strip }]
      end
      references = terms.to_h do |term|
        aliases = term['aliases'].map { |text| " #{SiteDiscovery.normalize(text)} " }
        matches = documents.select do |doc|
          (Array(doc.data['tags']) & [term['id']]).any? ||
            (Array(doc.data['categories']) & term['categories']).any? ||
            aliases.any? { |text| corpus[doc][:searchable].include?(text) }
        end
        [term['id'], matches]
      end
      document_terms = documents.to_h { |doc| [doc, terms.select { |term| references[term['id']].include?(doc) }.map { |term| term['id'] }] }

      terms.each do |term|
        matches = references[term['id']]
        next if matches.empty?
        related = terms.filter_map do |other|
          next if other['id'] == term['id']
          count = (matches & references[other['id']]).size
          other.merge('count' => count) if count.positive?
        end.sort_by { |other| [-other['count'], SiteDiscovery.normalize(other['label'])] }.first(12)
        page = Jekyll::PageWithoutAFile.new(site, site.source, "indice/#{term['id']}", 'index.html')
        page.data = {
          'layout' => 'index-term', 'title' => "#{term['label']} — Índice remissivo — Maurício Aniche",
          'description' => "#{matches.size} conteúdos do acervo relacionados a #{term['label']}, com trechos e verbetes que aparecem juntos.",
          'term' => term, 'related_terms' => related,
          'social_image' => site.data.fetch('og_images')['/indice'],
          'references' => matches.sort_by { |doc| sort_date(doc) }.reverse.map { |doc|
            type = site.data.fetch('content_types').find { |entry| entry['id'] == doc.data['content_type'] }
            { 'url' => doc.url, 'title' => doc.data['display_title'] || doc.data['title'],
              'type' => type && type['singular'], 'snippet' => snippet(corpus[doc][:body], term) }
          }
        }
        site.pages << page
      end
      add_related(site, terms, document_terms)
    end

    def sort_date(doc)
      return doc.data['published_on'].to_s if doc.data['published_on']
      return doc.data['year'].to_s if doc.collection.label == 'media'
      doc.date.strftime('%Y-%m-%d')
    end

    def snippet(body, term)
      aliases = term['aliases'].map { |text| " #{SiteDiscovery.normalize(text)} " }
      sentence = body.split(/(?<=[.!?])\s+/).find { |part|
        normalized = " #{SiteDiscovery.normalize(part)} "
        aliases.any? { |text| normalized.include?(text) }
      }
      return nil unless sentence
      return sentence if sentence.length <= 360
      normalized = " #{SiteDiscovery.normalize(sentence)} "
      position = aliases.filter_map { |text| normalized.index(text) }.min || 0
      start = [position - 110, 0].max
      "#{start.positive? ? '…' : ''}#{sentence[start, 360]}#{start + 360 < sentence.length ? '…' : ''}"
    end

    def add_related(site, terms, document_terms)
      posts = SiteExports.public_blog(site)
      subject_ids = terms.select { |term| term['kind'] == 'assuntos' && term['id'] != 'ia' }.map { |term| term['id'] }
      posts.each do |post|
        subjects = Array(post.data['tags']) - ['ia']
        subjects = (document_terms[post] || []) & subject_ids if subjects.empty?
        language = post.data['lang'] || site.config['lang']
        candidates = posts.reject { |other| other == post || other.url == post.data['translation_url'] }
        ranked = candidates.sort_by do |other|
          other_subjects = Array(other.data['tags']) - ['ia']
          other_subjects = (document_terms[other] || []) & subject_ids if other_subjects.empty?
          [language == (other.data['lang'] || site.config['lang']) ? 0 : 1, -(subjects & other_subjects).size, -other.date.to_i, other.url]
        end
        post.data['related_articles'] = ranked.first(3).map { |other| { 'url' => other.url, 'title' => other.data['title'] } }
      end
    end
  end
end
