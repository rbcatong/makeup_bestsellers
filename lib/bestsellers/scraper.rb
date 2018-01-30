require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

  def scrape_website
    page = Nokogiri::HTML(open("https://www.sephora.com/"))
    binding.pry

  end

end

Scraper.new().scrape_website
