xml.instruct!

xml.sitemapindex xmlns: 'https://www.sitemaps.org/schemas/sitemap/0.9' do
  xml.loc root_url + "sitemap.xml.gz"
  xml.lastmod Time.now.utc.strftime('%Y-%m-%dT%H:%M:%S%:z')
end
