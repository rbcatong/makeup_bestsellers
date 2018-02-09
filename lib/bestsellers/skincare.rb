class Bestsellers::Skincare
  attr_accessor :name, :description, :price, :url


  def self.skincare
    self.scrape_skincare
  end

  def self.scrape_skincare
    skincare_bestsellers = []
    skincare_bestsellers << self.scrape_top_skincare
  end

  def self.scrape_top_skincare
    skincare = self.new
    skincare_bestsellers = []
    doc = Nokogiri::HTML(open("https://www.ulta.com/skin-care-allure-best-of-beauty?N=yrcmiw"))
    doc.css(".productQvContainer").each do |item|
      skincare.name = item.search(".prod-title").text.strip
      skincare.description = item.search(".prod-desc").text.strip
      skincare.price = item.search(".productPrice").text.strip
    end
  skincare
    end
end
