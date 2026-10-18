require 'jekyll'
require 'json'

Jekyll.logger.log_level = :error
site = Jekyll::Site.new(Jekyll.configuration('quiet' => true))
site.read
entries = site.pages + site.collections.values.flat_map(&:docs)
puts JSON.generate(entries.select { |item|
  item.data['layout'] && item.data['title'] && !item.data['image'] && !item.data['social_image'] &&
    item.data['published'] != false && item.data['noindex'] != true && item.data['sitemap'] != false &&
    (!item.respond_to?(:date) || site.future || item.date <= site.time)
}.map { |item|
  { url: item.url, title: item.data['title'], type: item.data['layout'] == 'post' ? 'Artigo' : 'Maurício Aniche' }
})
