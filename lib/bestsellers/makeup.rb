class Bestsellers::Makeup
  attr_accessor :name, :description, :price, :url


  def self.makeup
    self.scrape_top_makeup
  end

  def self.scrape_beauty
    makeup_bestsellers = []
    makeup_bestsellers << self.scrape_top_makeup
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


end
