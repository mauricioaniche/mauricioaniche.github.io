require 'tmpdir'
require 'fileutils'
require 'open3'
require 'nokogiri'
require 'json'
require 'time'

checks = 0
assert = lambda do |condition, message|
  raise message unless condition
  checks += 1
end
Dir.mktmpdir('aniche-publishing-') do |tmp|
  tmp = File.realpath(tmp)
  source = File.join(tmp, 'source')
  output = File.join(tmp, 'site')
  FileUtils.mkdir_p(source)
  ignored = %w[.git .bundle vendor _site node_modules output .playwright-cli .jekyll-cache .sass-cache]
  Dir.children('.').reject { |name| ignored.include?(name) }.each { |name| FileUtils.cp_r(name, source) }
  fixture = lambda do |filename, front_matter, body|
    File.write(File.join(source, '_blog', filename), "---\nlayout: post\nimage: /assets/images/blog/cartoon/testando-agentes-cartoon.jpg\n#{front_matter}\n---\n#{body}\n")
  end
  fixture.call('2099-01-01-scheduled-fixture.md', "title: FUTURELEAKCHECK\ntags: [ia, testes]", 'SCHEDULED_BODY_SENTINEL')
  fixture.call('2010-01-01-hidden-fixture.md', "title: UNPUBLISHEDLEAKCHECK\npublished: false", 'UNPUBLISHED_BODY_SENTINEL')
  fixture.call('2010-01-01-noindex-fixture.md', "title: NOINDEXLEAKCHECK\nnoindex: true", 'NOINDEX_BODY_SENTINEL')
  fixture.call('2010-01-01-portuguese-fixture.md', "title: Portuguese fixture\nredirect_from: /old-fixture/", 'Texto original de teste.')
  fixture.call('2010-01-01-english-fixture.md', "title: English fixture\nlang: en\ntranslation_url: /blog/portuguese-fixture/\ntranslation_reviewed: false", 'English translation fixture.')
  File.write(File.join(source, '_data/conversations/english-fixture.json'), JSON.generate({
    'comments' => [{ 'author' => 'TEST AUTHOR', 'source' => 'X', 'url' => 'https://x.com/example/status/123', 'text' => '<script>TEST COMMENT</script>' }]
  }))
  build = lambda do |time|
    File.write(File.join(source, '_test_config.yml'), "time: '#{time}'\n")
    log, status = Open3.capture2e({ 'JEKYLL_ENV' => 'production', 'TZ' => 'UTC' },
      'bundle', 'exec', 'jekyll', 'build', '--source', source, '--destination', output,
      '--config', "#{source}/_config.yml,#{source}/_test_config.yml", chdir: source)
    raise log unless status.success?
  end
  build.call('2098-12-31T23:59:59-03:00')
  assert.call(!File.exist?(File.join(output, 'blog/scheduled-fixture/index.html')), 'Future post published early')
  assert.call(!File.exist?(File.join(output, 'blog/hidden-fixture/index.html')), 'Unpublished post was written')
  # Check every generated text surface, including catalogues and index snippets.
  Dir[File.join(output, '**/*.{html,xml,txt}')].each do |file|
    text = File.read(file)
    assert.call(!text.include?('FUTURELEAKCHECK') && !text.include?('SCHEDULED_BODY_SENTINEL'), "Future post leaked: #{file}")
    assert.call(!text.include?('UNPUBLISHEDLEAKCHECK') && !text.include?('UNPUBLISHED_BODY_SENTINEL'), "Draft leaked: #{file}")
  end
  noindex = Nokogiri::HTML(File.read(File.join(output, 'blog/noindex-fixture/index.html')))
  assert.call(noindex.at_css('meta[name="robots"]')&.[]('content').to_s.include?('noindex'), "Missing noindex directive: #{noindex.to_html[0, 1800]}")
  assert.call(noindex.at_css('[data-pagefind-body]').nil?, 'Noindex body is searchable')
  %w[sitemap.xml feed.xml llms.txt llms-full.txt].each do |file|
    assert.call(!File.read(File.join(output, file)).include?('noindex-fixture'), "Noindex URL leaked: #{file}")
  end
  %w[portuguese english].each do |language|
    document = Nokogiri::HTML(File.read(File.join(output, "blog/#{language}-fixture/index.html")))
    links = document.css('link[hreflang]').to_h { |node| [node['hreflang'], node['href']] }
    assert.call(links == {
      'pt-BR' => 'https://mauricioaniche.com/blog/portuguese-fixture/',
      'en' => 'https://mauricioaniche.com/blog/english-fixture/',
      'x-default' => 'https://mauricioaniche.com/blog/portuguese-fixture/'
    }, "Nonreciprocal translation: #{language}")
    graph = JSON.parse(document.at_css('script[type="application/ld+json"]').text)['@graph']
    article = graph.find { |node| node['@type'] == 'BlogPosting' }
    assert.call(article.key?(language == 'english' ? 'translationOfWork' : 'workTranslation'), 'Missing translation schema')
    if language == 'english'
      assert.call(document.at_css('.translation-notice').text.include?('has not been reviewed by a human'), 'Missing review disclosure')
      assert.call(document.at_css('.post-conversation').text.include?('<script>TEST COMMENT</script>'), 'Missing sourced conversation')
      assert.call(document.css('.post-conversation script').empty?, 'Comment HTML was not escaped')
    end
  end
  english_feed = Nokogiri::XML(File.read(File.join(output, 'en/feed.xml'))) { |config| config.strict }
  assert.call(english_feed.css('item').size == 1 && english_feed.at_css('item link').text.end_with?('/english-fixture/'), 'English feed mixes languages')
  redirect = Nokogiri::HTML(File.read(File.join(output, 'old-fixture/index.html')))
  assert.call(redirect.at_css('meta[http-equiv="refresh"]')['content'].include?('/portuguese-fixture/'), 'Old URL is not redirected')

  build.call('2099-01-01T00:00:00-03:00')
  scheduled = Nokogiri::HTML(File.read(File.join(output, 'blog/scheduled-fixture/index.html')))
  published = Time.iso8601(scheduled.at_css('meta[property="article:published_time"]')['content'])
  assert.call(published.utc.iso8601 == '2099-01-01T03:00:00Z', 'Publication date shifted across timezone boundary')
  %w[sitemap.xml feed.xml llms-full.txt].each do |file|
    assert.call(File.read(File.join(output, file)).include?('/blog/scheduled-fixture/'), "Scheduled post missing at publication time: #{file}")
  end
end
puts "#{checks} publishing checks passed: dates, drafts, noindex, translations, language feeds and redirects."
