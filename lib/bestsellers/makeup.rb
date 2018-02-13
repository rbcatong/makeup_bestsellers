class Bestsellers::Makeup
  attr_accessor :name, :description, :price, :url

  # def self.makeup
  #   self.scrape_top_makeup.each do |
  # end

  # def self.scrape_beauty
  #    self.scrape_top_makeup.each do|key,value|
  #     self.send("#{key}=".value)
  #    binding.pry
  #  end
  # end

  def initialize(name = nil, description = nil, price = nil, url = nil)

  def name
    @name =
  end

  def self.scrape_top_makeup
    # makeup = self.new
    makeup_collection = []
    doc = Nokogiri::HTML(open("https://www.ulta.com/makeup-allure-best-of-beauty?N=1g7h4q6"))
    doc.css(".productQvContainer").each do |item|
      makeup_name = item.search(".prod-title").text.strip
      makeup_description = item.search(".prod-desc").text.strip
      makeup_price = item.search(".productPrice").text.strip
      makeup_collection << {name: makeup_name, description: makeup_description, price: makeup_price}
    end
  makeup_collection
end


end
