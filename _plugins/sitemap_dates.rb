require 'nokogiri'
require 'date'

# Jekyll gives undated collection documents the build time, and a fresh checkout
# resets static-file mtimes. Neither is evidence of a content modification.
Jekyll::Hooks.register :site, :post_render do |site|
  page = site.pages.find { |entry| entry.url == '/sitemap.xml' }
  next unless page
  sitemap = Nokogiri::XML(page.output) { |config| config.strict }
  base = site.config.fetch('url') + site.baseurl.to_s
  documents = site.collections.values.flat_map(&:docs).to_h { |doc| ["#{base}#{doc.url}", doc] }
  static_urls = site.static_files.map { |file| "#{base}#{file.url}" }
  sitemap.xpath('//*[local-name()="url"]').each do |entry|
    url = entry.at_xpath('./*[local-name()="loc"]').text
    lastmod = entry.at_xpath('./*[local-name()="lastmod"]')
    next unless lastmod
    doc = documents[url]
    if doc && !doc.data['last_modified_at'] && doc.collection.label == 'media'
      if doc.data['published_on']
        lastmod.content = Date.iso8601(doc.data['published_on'].to_s).iso8601
      else
        lastmod.remove
      end
    elsif static_urls.include?(url)
      lastmod.remove
    end
  end
  page.output = sitemap.to_xml
end
