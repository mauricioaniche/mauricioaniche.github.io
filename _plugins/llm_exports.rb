# Export the source Markdown before Jekyll turns collection bodies into HTML.
module SiteExports
  def self.public_blog(site)
    site.collections.fetch('blog').docs.select { |post|
      post.data['published'] != false && post.data['noindex'] != true &&
        post.data['sitemap'] != false && post.data['hide_from_list'] != true &&
        (site.future || post.date <= site.time)
    }.sort_by(&:date).reverse
  end

  class LlmExports < Jekyll::Generator
    safe true
    priority :low

    def generate(site)
      base = site.config.fetch('url') + site.baseurl.to_s
      posts = SiteExports.public_blog(site)
      full = ["# Artigos de Maurício Aniche\n\nFonte: #{base}/blog\n\nTextos completos em Markdown, com as referências originais.\n"]
      posts.each do |post|
        markdown = site.liquid_renderer.file(post.path).parse(post.content).render!(
          site.site_payload, registers: { site: site, page: post.to_liquid }
        ).gsub(/(\]\()\/(?!\/)/, "\\1#{base}/")
        full << "# #{post.data['title']}\n\nData: #{post.date.iso8601}\nURL: #{base}#{post.url}\nIdioma: #{post.data['lang'] || site.config['lang']}\n\n#{markdown.strip}\n"
      end
      add_text(site, 'llms-full.txt', full.join("\n---\n\n"))

      intro = "# Maurício Aniche\n\n> Engenharia de software, inteligência artificial, qualidade, liderança e educação.\n\nMaurício Aniche é CTO da Alun, ex-Staff Engineer na Uber e ex-professor da TU Delft.\nÉ doutor e mestre em Ciência da Computação pela USP.\nÉ autor de Effective Software Testing e Simple Object-Oriented Design, publicados pela Manning.\n\nOs artigos refletem a perspectiva do autor na data de publicação. Os textos são principalmente em português brasileiro.\n\n## Seções\n\n"
      sections = {
        '/conteudo' => ['Todo o conteúdo', 'Artigos, podcasts, palestras e publicações científicas.'],
        '/ia' => ['Inteligência artificial', 'Artigos e conversas sobre engenharia de software com IA, organizados por assunto.'],
        '/indice' => ['Índice remissivo', 'Assuntos, pessoas, ferramentas, empresas e obras citadas no acervo.'],
        '/books' => ['Livros', 'Livros de testes e design de software.'],
        '/english' => ['In English', 'Career, books and engineering perspective in English.'],
        '/feed.xml' => ['RSS', 'Os 50 artigos mais recentes, com texto completo.'],
        '/llms-full.txt' => ['Artigos completos em Markdown', 'Todos os artigos públicos do blog, com data, URL e referências.']
      }
      sections.each { |url, (title, description)| intro << "- [#{title}](#{base}#{url}): #{description}\n" }
      intro << "\n## Temas principais\n\n"
      %w[agentes testes arquitetura revisao-de-codigo operacao lideranca educacao custos senso-critico].each do |id|
        topic = site.data.fetch('ai_topics').find { |entry| entry['id'] == id }
        intro << "- [#{topic['label']}](#{base}/ia?assunto=#{id}): Textos relacionados a #{topic['label'].downcase}.\n" if topic
      end
      intro << "\n## Artigos selecionados\n\n"
      site.data.fetch('llms_posts').each do |slug|
        post = posts.find { |entry| entry.data['slug'] == slug }
        next unless post
        intro << "- [#{post.data['title']}](#{base}#{post.url}): #{post.data['description']}\n"
      end
      add_text(site, 'llms.txt', intro)
    end

    def add_text(site, filename, content)
      page = Jekyll::PageWithoutAFile.new(site, site.source, '', filename)
      page.data = { 'layout' => nil, 'sitemap' => false }
      page.content = content
      site.pages << page
    end
  end
end
