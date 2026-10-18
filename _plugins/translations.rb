module SiteTranslations
  class Pairs < Jekyll::Generator
    safe true
    priority :high

    def generate(site)
      entries = site.pages + site.collections.values.flat_map(&:docs)
      entries.each do |entry|
        target_url = entry.data['translation_url']
        next unless target_url
        target = entries.find { |candidate| candidate.url == target_url }
        raise Jekyll::Errors::FatalException, "Missing translation: #{entry.url} -> #{target_url}" unless target
        source_language = entry.data['lang'] || site.config['lang']
        target_language = target.data['lang'] || site.config['lang']
        if source_language == target_language || !%w[en pt-BR].include?(source_language) ||
            !%w[en pt-BR].include?(target_language) ||
            (target.data['translation_url'] && target.data['translation_url'] != entry.url)
          raise Jekyll::Errors::FatalException, "Invalid translation pair: #{entry.url}, #{target.url}"
        end
        target.data['translation_url'] = entry.url
      end
    end
  end
end
