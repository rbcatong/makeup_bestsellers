class Bestsellers::CLI

  #@scraper = Scraper.new

  def start
    puts "Welcome to Sephora"
    opening_question
  end

  def opening_question
    puts "Would you like to take a look at today's bestsellers?"
    puts "1 -- See today's bestsellers"
    puts "2 -- Exit"
    input = gets.strip
    case(input)
    when "1"
      list_product_categories
    when "2"
      puts "Thank you for visiting, see you again soon!"
      exit
    else
      puts "Please try again."
      opening_question
    end
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

  def show_product_info
  end


end
