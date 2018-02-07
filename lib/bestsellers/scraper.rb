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

  def product_name
    page = Nokogiri::HTML(open("https://www.ulta.com/makeup-allure-best-of-beauty?N=1g7h4q6"))
    page.css(".prod-title").each do |item|
      binding.pry
    end
  end


end

Scraper.new().product_name
