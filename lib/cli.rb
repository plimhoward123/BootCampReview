class CLI
  
  def initialize
    intro
  end
  
  def intro

    #Initialize Scrape class to gather data from webpage and create a new object of it self, and store it into a class variable @@all.
    scrape = Scrape.new.scrape_data
    
    #Introduction instructions for simple input
    puts "                                                                      "
    puts " Enter 1 - #{School.all.length} to expand information on the Boot Camp"
    puts "              Press 0 to exit                      "
    puts "---------------------------------------------------"
    
    #Iterate through each instance of a school object with index
    School.all.each_with_index do |obj, i|
      puts (i + 1) .to_s + ". " + obj.name
    end
    
    puts "\n"
    
    
    #gets user input 
    while (input = gets.chomp.to_i) != 0
      if(input > 1 && input < 35 && input.is_a?(Integer))
        tmpObj = School.all[input-1]
        puts "Name        : " + tmpObj.name
        puts "Rating      : " + tmpObj.rating
        puts "Locations   : " + tmpObj.locations
        puts "Description : " + tmpObj.description + "\n\n"
      else
       puts "Please enter 1-#{School.all.length}"
      end
    end
  end
  
end
