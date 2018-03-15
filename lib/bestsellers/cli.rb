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
    if input == "1"
      list_product_categories
    elsif input == "2"
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
    if input == "1"
      puts "Please type the number of the product in which you would like more info on."
      show_makeup_info
    elsif input == "2"
      puts "Please type the number of the product in which you would like more info on."
      show_skincare_info
    elsif input == "3"
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
      #{item.price}"
    end
    display_makeup_url
    puts "Would you like to see the makeup list again? Type 1 to see the makeup menu or 2 to see main menu or 3 to exit."
    input = gets.strip
    if input == "1"
      show_makeup_info
    elsif input == "2"
      list_product_categories
    elsif input == "3"
      puts "Goodbye"
      exit
    else puts "Please try again."
      show_makeup_info
    end
  end

  def display_makeup_url
    input = gets.strip.to_i
    collection_of_makeup = Bestsellers::Scraper.scrape_top_makeup
    if input <= collection_of_makeup.length
      puts "Url: https://www.ulta.com/#{collection_of_makeup[input-1].url}"
    else
      puts "Please try again"
      show_makeup_info
    end
  end


  def show_skincare_info
    Bestsellers::Scraper.scrape_top_skincare.each.with_index(1) do |item, i|
      puts "#{i}. Name: #{item.name}
      Description: #{item.description}
      #{item.price}"
    end
    display_skincare_url
    puts "Would you like to see the skincare list again? Type 1 to see the skincare menu or 2 to see menu or 3 to exit."
    input = gets.strip
    if input == "1"
      show_skincare_info
    elsif input == "2"
      list_product_categories
    elsif input == "3"
      puts "Goodbye"
      exit
    else puts "Please try again."
      show_skincare_info
    end
  end

  def display_skincare_url
    input = gets.strip.to_i
    collection_of_skincare = Bestsellers::Scraper.scrape_top_skincare
    if input <= collection_of_skincare.length
      puts "Url: https://www.ulta.com/#{collection_of_skincare[input-1].url}"
    else
      puts "Please try again."
      show_skincare_info
    end
  end

end
