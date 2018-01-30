class Bestsellers::CLI
  attr_accessor :name, :price, :description
  
  def call
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
  
  def list_details
  
  end
end


