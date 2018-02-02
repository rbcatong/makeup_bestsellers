class Bestsellers::CLI

  @scraper = Scraper.new

  def start
    puts "Welcome to Sephora"
    puts "Would you like to take a look at today's bestsellers?(Y/N)"
    list_product_categories
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
    puts "Which category would you like to see?"
    #grabs the method from scraper
    scraper = Scraper.new
    scraper.list_of_categories
  end


end
