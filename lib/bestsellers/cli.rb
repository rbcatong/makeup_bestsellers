class Bestsellers::CLI

  #@scraper = Scraper.new

  def start
    puts "Welcome to Sephora"
    puts "Would you like to take a look at today's bestsellers?(Y/N)"
    input = gets.strip
    case(input)
    when "Y"
      list_product_categories
    when "N"
      puts "Thank you for visiting, see you again soon!"
      # #while input != "N"
      #   puts "Would you like to take a look at today's bestsellers?"
      # case(input)
      #     when "Y"
      #       list_product_categories
      #     end
      #       puts "Thank you for visiting, see you again soon!"
      # end
  end

  def list_product_categories
    puts "Which category would you like to see? Type the number of the category that you'd like to see."
    puts "1) Makeup"
    puts "2) Skincare"
    puts "3) Fragrance"
    puts "4) Bath&Body"
    puts "5) Hair"
    #grabs the method from scraper
    #scraper = Scraper.new
    #scraper.list_of_categories
  end


end
