require 'jekyll'
require 'json'

Jekyll.logger.log_level = :error
# Prepare responsive assets before scheduled entries become public.
site = Jekyll::Site.new(Jekyll.configuration('quiet' => true, 'future' => true))
site.read
images = (site.pages + site.collections.values.flat_map(&:docs)).map { |item| item.data['image'] }
images.concat(site.data.fetch('books').map { |book| book.fetch('image') })
images.concat(%w[/assets/images/foto-1-2026.jpg /assets/images/foto-2-2026.jpg /assets/images/avatar-gta-aniche.png])
puts JSON.generate(images.compact.uniq.sort.select { |image| image.start_with?('/assets/') && image.match?(/\.(jpe?g|png)$/i) })
