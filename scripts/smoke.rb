require 'jekyll'
require 'nokogiri'
require 'json'
require 'uri'

root = File.expand_path(ARGV.fetch(0, '_site'))
site = Jekyll::Site.new(Jekyll.configuration('quiet' => true))
site.read
origin = site.config.fetch('url') + site.baseurl.to_s
checks = 0
assert = lambda do |condition, message|
  raise message unless condition
  checks += 1
end
file_for = lambda do |url|
  path = URI::DEFAULT_PARSER.unescape(URI.parse(url).path).delete_prefix(site.baseurl.to_s).sub(%r{^/}, '')
  [File.join(root, path), File.join(root, "#{path}.html"), File.join(root, path, 'index.html')].find { |file| File.file?(file) }
end
assert.call(site.config['url'] == "https://#{File.read('CNAME').strip}", 'CNAME and canonical host disagree')
html = Dir[File.join(root, '**/*.html')].to_h { |file| [file, Nokogiri::HTML(File.read(file))] }
sitemap = Nokogiri::XML(File.read(File.join(root, 'sitemap.xml'))) { |config| config.strict }
sitemap_urls = sitemap.xpath('//*[local-name()="loc"]').map(&:text)
assert.call(sitemap_urls.any?, 'Empty sitemap')
sitemap_urls.each do |url|
  assert.call(url.start_with?("#{origin}/") && file_for.call(url), "Missing or foreign sitemap URL: #{url}")
end
html.each do |file, document|
  canonical = document.at_css('link[rel="canonical"]')&.[]('href')
  assert.call(canonical && canonical.start_with?("#{origin}/") && (file_for.call(canonical) == file || (document.at_css('meta[http-equiv="refresh"]') && file_for.call(canonical))), "Invalid canonical: #{file}")
  document.css('meta[property="og:url"], link[hreflang], link[type="application/rss+xml"]').each do |node|
    url = node['content'] || node['href']
    assert.call(url.start_with?("#{origin}/") && file_for.call(url), "Invalid discovery URL: #{url}")
  end
  assert.call(!File.read(file).match?(/analytics\.js|UA-10934071-4/), "Universal Analytics remains: #{file}")
  if document.at_css('meta[name="robots"]')&.[]('content').to_s.include?('noindex')
    assert.call(!sitemap_urls.include?(canonical), "Noindex URL in sitemap: #{canonical}")
  end
  document.css('script[type="application/ld+json"]').each do |script|
    graph = JSON.parse(script.text)
    assert.call(graph['@context'] == 'https://schema.org' && graph['@graph'].any?, "Invalid JSON-LD: #{file}")
    graph['@graph'].select { |entry| entry['@type'] == 'BlogPosting' }.each do |article|
      assert.call(%w[headline datePublished dateModified inLanguage image mainEntityOfPage isPartOf author].all? { |key| article[key] }, "Incomplete article schema: #{file}")
      assert.call(article['url'] == canonical && article['mainEntityOfPage']['@id'] == canonical, "Article canonical differs: #{file}")
    end
  end
end
posts = site.collections.fetch('blog').docs.reject { |post|
  post.data['noindex'] || post.data['sitemap'] == false || post.data['hide_from_list'] || (!site.future && post.date > site.time)
}
images = []
posts.each do |post|
  file = file_for.call(post.url)
  assert.call(file, "Missing post: #{post.url}")
  document = html.fetch(file)
  image = document.at_css('meta[property="og:image"]')&.[]('content')
  assert.call(image && image.start_with?(origin) && file_for.call(image), "Missing post image: #{post.url}")
  images << image
  assert.call(document.at_css('meta[property="og:image:width"]') && document.at_css('meta[property="og:image:height"]'), "Missing image dimensions: #{post.url}")
  assert.call(document.at_css('script[type="application/ld+json"]'), "Missing article schema: #{post.url}")
  related = document.css('.related-posts a').map { |node| node['href'] }
  assert.call(related.size == [3, posts.size - 1].min && related.uniq == related && !related.include?(post.url), "Invalid related posts: #{post.url}")
  related.each { |url| assert.call(file_for.call(url), "Broken related link: #{url}") }
end

{ 'feed.xml' => posts.reject { |post| post.data['lang'] == 'en' }, 'en/feed.xml' => posts.select { |post| post.data['lang'] == 'en' } }.each do |filename, entries|
  feed = Nokogiri::XML(File.read(File.join(root, filename))) { |config| config.strict }
  items = feed.css('item')
  assert.call(items.size == [50, entries.size].min, "Wrong feed item count: #{filename}")
  items.each do |item|
    assert.call(item.at_css('description').text.include?('<p>'), "Feed lacks full HTML: #{item.at_css('link').text}")
    enclosure = item.at_css('enclosure')
    image = enclosure && file_for.call(enclosure['url'])
    assert.call(image && File.size(image) == enclosure['length'].to_i && enclosure['type'].start_with?('image/'), 'Invalid RSS enclosure')
    assert.call(file_for.call(item.at_css('link').text), 'Missing feed destination')
  end
end
%w[llms.txt llms-full.txt].each do |filename|
  content = File.read(File.join(root, filename))
  assert.call(content.start_with?('# ') && !content.match?(/\{%|\{\{/), "Missing or unresolved LLM export: #{filename}")
end
full = File.read(File.join(root, 'llms-full.txt'))
posts.each { |post| assert.call(full.include?("URL: #{origin}#{post.url}\n"), "Post missing from LLM export: #{post.url}") }
robots = File.read(File.join(root, 'robots.txt'))
assert.call(robots.include?("Sitemap: #{origin}/sitemap.xml"), 'Missing sitemap in robots.txt')
index = html.fetch(file_for.call('/indice'))
index.css('[data-index-term]').each do |term|
  id = term['id'].delete_prefix('verbete-')
  page = html.fetch(file_for.call("/indice/#{id}/"))
  expected = term.css('[data-index-reference] > a').map { |node| node['href'] }.sort
  actual = page.css('.index-entry-references > li > a').map { |node| node['href'] }.sort
  assert.call(expected == actual, "Index term associations differ: #{id}")
end
JSON.parse(File.read('scripts/published-urls.json')).each do |url|
  assert.call(file_for.call(url), "Previously published URL disappeared: #{url}")
end
search = JSON.parse(File.read(File.join(root, 'pagefind/pagefind-entry.json')))
indexed = html.values.count { |document| document.at_css('[data-pagefind-body]') }
assert.call(search.fetch('languages').values.sum { |language| language.fetch('page_count') } == indexed, 'Pagefind skipped content')
%w[pagefind.js pagefind-ui.js pagefind-ui.css].each do |asset|
  assert.call(File.size?(File.join(root, 'pagefind', asset)), "Missing search asset: #{asset}")
end
puts "#{checks} checks passed: #{posts.size} posts, #{sitemap_urls.size} sitemap URLs, #{index.css('[data-index-term]').size} term pages."
