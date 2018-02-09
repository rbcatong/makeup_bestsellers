class Bestsellers::Product
  attr_accessor :name, :description, :price, :url

  def self.makeup
    self.scrape_beauty
  end

  def self.skincare
    self.scrape_skincare
  end


  def self.scrape_skincare
    skincare_bestsellers = []
    skincare_bestsellers << self.scrape_top_skincare
  end

  def self.scrape_beauty
    makeup_bestsellers = []
    makeup_bestsellers << self.scrape_top_makeup
  end

  def self.scrape_top_skincare
  end

  def self.scrape_top_makeup
    makeup = self.new
    doc = Nokogiri::HTML(open("https://www.ulta.com/makeup-allure-best-of-beauty?N=1g7h4q6"))
    doc.css(".productQvContainer").each do |item|
      makeup.name = item.search(".prod-title").text.strip
      makeup.description = item.search(".prod-desc").text.strip
      makeup.price = item.search(".productPrice").text.strip
    end
    makeup
    binding.pry
  end

  def kincare_product_name
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
