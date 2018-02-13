require 'nokogiri'
require 'open-uri'
require 'pry'

class Bestsellers::Scraper

  def self.scrape_top_makeup
      makeup_collection = []
      doc = Nokogiri::HTML(open("https://www.ulta.com/makeup-allure-best-of-beauty?N=1g7h4q6"))
      doc.css(".productQvContainer").each do |item|
        makeup_name = item.search(".prod-title").text.strip
        makeup_description = item.search(".prod-desc").text.strip
        makeup_price = item.search(".productPrice").text.strip
        makeup_url = item.css("a").attr("href").value
        new_product = Bestsellers::Makeup.new(makeup_name, makeup_description, makeup_price, makeup_url)
        makeup_collection << new_product
      end
    makeup_collection
  end


end
