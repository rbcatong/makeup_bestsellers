require 'nokogiri'
require 'open-uri'
require 'pry'

class Bestsellers::Scraper
  # def list_of_categories
  #   list_of_categories = []
  #   page = Nokogiri::HTML(open("https://www.sephora.com/beauty-best-sellers?mediaId=14300062"))
  #     page.css(".SideNav-link").each do |category|
  #       list_of_categories << category.text.strip
  #       binding.pry
  #     end
  #   #create strings from array...
  # end

  def makeup_product
    makeup = []
    page = Nokogiri::HTML(open("https://www.ulta.com/makeup-allure-best-of-beauty?N=1g7h4q6"))
    page.css(".productQvContainer").each do |item|
      brand_name = item.css(".prod-title").text.strip
      name_desc = item.css(".prod-desc").text.strip
      price = item.css(".productPrice").text.strip
      makeup << {name: brand_name, description: name_desc}
    end
    makeup
  end #do a list of hashes with price, makeup brand decscription.. if they want to know more we can give link.

  def skincare_product_name
    skincare = []
    page = Nokogiri::HTML(open("https://www.ulta.com/skin-care-allure-best-of-beauty?N=yrcmiw"))
    page.css(".productQvContainer").each do |item|
      brand_name = item.css(".prod-title").text.strip
      name_desc = item.css(".prod-desc").text.strip
      price = item.css(".productPrice").text.strip
      #skincare
    end
  end
end

#Scraper.new().makeup_product
