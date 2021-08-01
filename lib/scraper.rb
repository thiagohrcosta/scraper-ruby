require "open-uri"
require "nokogiri"

def scrape_craiglist_antiques(city)
  doc = Nokogiri::HTML(URI.open("http://#{city}.craigslist.org/search/ata"))
  doc.search('.hdrlnk').map(&:text)
end

puts scrape_craiglist_antiques('Boston')

