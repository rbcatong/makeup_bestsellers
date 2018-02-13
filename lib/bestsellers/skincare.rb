class Bestsellers::Skincare
  attr_accessor :name, :description, :price, :url


  def initialize(name,description,price,url)
    @name = name
    @description = description
    @price = price
    @url = url
  end

end
