class Bestsellers::CLI

  def call
    opening_question
  end

  def opening_question
    puts "Welcome to Ulta"
    puts "Would you like to take a look at Allure's Best of Beauty?"
    puts "1 -- See Allure's Best of Beauty"
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
    puts "Which category would you like to see? Type the number of the category that you'd like to see or 3 to exit out."
    puts "1) Makeup"
    puts "2) Skincare"
    puts "3) Exit"
    input = gets.strip
    case(input)
    when "1"
      puts "Press a number if you'd like more information"
      show_makeup_info
    when "2"
      show_skincare_info
    when "3"
      puts "Goodbye."
      exit
    else
      puts "Please try again."
      list_product_categories
    end
  end

  def show_makeup_info
    Bestsellers::Scraper.scrape_top_makeup.each.with_index(1) do |item, i|
      puts "#{i}. Name: #{item.name}
      Description: #{item.description}
      Price: #{item.price} "
    end
    display_url
  end


  def display_url
    input = gets.strip
    collection_of_makeup = Bestsellers::Scraper.scrape_top_makeup
      if input.to_i <= collection_of_makeup.length
        puts "Url: https://www.ulta.com/#{collection_of_makeup[input.to_i-1].url}"
      else
        puts "Goodbye"
      end
    end


    def show_skincare_info
      Bestsellers::Scraper.scrape_top_makeup.each.with_index(1) do |item, i|
        puts "#{i}. Name: #{item.name}
        Description: #{item.description}
        Price: #{item.price} "

      end
    end


  end
