require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

#create a category for each link - makeupbestsellers, skincare best sellers. 
#then assign a number for each one so that tehy can choose. 
  # def list_of_categories
  #   list_of_categories = []
  #   page = Nokogiri::HTML(open("https://www.sephora.com/beauty-best-sellers?mediaId=14300062"))
  #     page.css(".SideNav-link").each do |category|
  #       list_of_categories << category.text.strip
  #     end
  # end

    def product_name
      page = Nokogiri::HTML(open("https://www.sephora.com/best-selling-makeup"))
      page.css(".SkuItem-info").each do |item|
        binding.pry
      end
      

    end


end

Scraper.new().product_name
