# A noindex page must not be advertised in the sitemap.
Jekyll::Hooks.register :site, :post_read do |site|
  (site.pages + site.collections.values.flat_map(&:docs)).each do |entry|
    entry.data['sitemap'] = false if entry.data['noindex'] == true
  end
end
