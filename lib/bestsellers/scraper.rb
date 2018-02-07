require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper
  # def list_of_categories
  #   list_of_categories = []
  #   page = Nokogiri::HTML(open("https://www.sephora.com/beauty-best-sellers?mediaId=14300062"))
  #     page.css(".SideNav-link").each do |category|
  #       list_of_categories << category.text.strip
  #       binding.pry
  #     end
  #   #create strings from array...
  # end

  def makeup_product_name
    makeup = []
    page = Nokogiri::HTML(open("https://www.ulta.com/makeup-allure-best-of-beauty?N=1g7h4q6"))
    page.css(".prod-desc").each do |item|
      makeup << item.text.strip
    end
  end #do a list of hashes with price, makeup brand decscription.. if they want to know more we can give link.

  def skincare_product_name
    skincare = []
    page = Nokogiri::HTML(open("https://www.ulta.com/skin-care-allure-best-of-beauty?N=yrcmiw"))
    page.css(".prod-desc").each do |item|
      binding.pry
      skincare << item.text.strip
    end
  end
end

Scraper.new().skincare_product_name
