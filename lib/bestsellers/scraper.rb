require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

  def scrape_website
    page = Nokogiri::HTML(open("https://www.sephora.com/beauty-best-sellers?mediaId=14300062"))
    binding.pry

  end

end

Scraper.new().scrape_website
