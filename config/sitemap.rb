# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = 'https://localhost'
SitemapGenerator::Sitemap.include_root = false

SitemapGenerator::Sitemap.create do
  add root_path, priority: 1, changefreq: 'daily'
end

# SitemapGenerator::Sitemap.ping_search_engines(yandex: 'https://blogs.yandex.ru/pings/?status=success&url=%s')
