# Jekyll's `future` setting filters `_posts`, but this site's posts live in `_blog`.
# Filter the collection before lists, sitemaps, feeds and exports are generated.
Jekyll::Hooks.register :site, :post_read do |site|
  next if site.future
  site.collections.fetch('blog').docs.reject! { |post| post.date > site.time }
end
