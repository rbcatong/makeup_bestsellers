require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

#create a category for each link - makeupbestsellers, skincare best sellers. 
  def scrape_website
    categories = []
    page = Nokogiri::HTML(open("https://www.sephora.com/beauty-best-sellers?mediaId=14300062"))
    page.css(".SideNav-link").each do |category|
      categories << category.text
      binding.pry
    end

  end

end

Scraper.new().scrape_website
