class Bestsellers::CLI
  attr_accessor :name, :price, :description
  
  def start
    puts "Welcome to Sephora"
    puts "Would you like to take a look at today's bestsellers?(Y/N)"
    input = gets.strip
    case(input)
    when "Y"
      list_details
    when "N"
      puts "Thank you for visiting, see you again soon!"
    end
  end
  
  def list_product_categories
    puts "Which category would you like to see?"
    #grabs the method from scraper
    
  end
end


