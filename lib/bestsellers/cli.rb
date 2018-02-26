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
      makeup_menu
    when "2"
      skincare_menu
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
    display_makeup_url
    puts "Would you like to see the makeup list again? Type Makeup to see the makeup menu or Main Menu to see menu or Exit to exit."
    input = gets.strip
    case(input)
    when "Makeup"
      show_makeup_info
    when "Main Menu"
      list_product_categories
    when "Exit"
      puts "Goodbye"
      exit
    else puts "Please try again."
      makeup_menu
    end
  end

  def makeup_menu
    puts "What item would you like to see? Type in the number that you would like to see."
    show_makeup_info
    input = gets.strip
    case(input)
    when "Main Menu"
      list_product_categories
    when "Exit"
      puts "Goodbye"
      exit
    else puts "Please try again."
      makeup_menu
    end
  end


  def display_makeup_url
    input = gets.strip
    collection_of_makeup = Bestsellers::Scraper.scrape_top_makeup
    if input.to_i <= collection_of_makeup.length
      puts "Url: https://www.ulta.com/#{collection_of_makeup[input.to_i-1].url}"
    elsif
      puts "Please try again"
      show_makeup_info
    end
  end


  def show_skincare_info
    Bestsellers::Scraper.scrape_top_skincare.each.with_index(1) do |item, i|
      puts "#{i}. Name: #{item.name}
      Description: #{item.description}
      Price: #{item.price} "
    end
    display_skincare_url
    puts "Would you like to see the skincare list again? Type Skincare to see the skincare menu or Main Menu to see menu or Exit to exit."
    input = gets.strip
    case(input)
    when "Skincare"
      show_skincare_info
    when "Main Menu"
      list_product_categories
    when "Exit"
      puts "Goodbye"
      exit
    else puts "Please try again."
      skincare_menu
    end
  end

  def skincare_menu
    puts "What item would you like to see? Type in the number that you would like to see."
    show_skincare_info
    input = gets.strip
    case(input)
    when "Main Menu"
      list_product_categories
    when "Exit"
      puts "Goodbye"
      exit
    else puts "Please try again."
      skincare_menu
    end
  end

  def display_skincare_url
    input = gets.strip
    collection_of_skincare = Bestsellers::Scraper.scrape_top_skincare
    if input.to_i <= collection_of_skincare.length
      puts "Url: https://www.ulta.com/#{collection_of_skincare[input.to_i-1].url}"
    elsif
      puts "Please try again."
      skincare_menu
    end
  end

end
