class CLI
  
  def initialize
    self.intro
  end
  
  def intro
    #Introduction instructions for simple input
    puts " Enter 1-35 to expand information on the Boot Camp "
    puts "              Press 0 to exit                      "
    puts "---------------------------------------------------"
    
    #Initialize Scrape class to gather data from webpage and create a new object of it self, and store it into a class variable @@all.
    scrape = Scrape.new.scrape_data
    
    #Iterate through each instance of a school object with index
    School.all.each_with_index do |obj, i|
      puts (i + 1) .to_s + ". " + obj.name
    end
    
    puts "\n"
    
    
    #gets user input 
    while (input = gets.chomp.to_i) != 0
      if(input > 1 && input < 35)
        tmpObj = School.all[input-1]
        puts "Name        : " + tmpObj.name
        puts "Rating      : " + tmpObj.rating
        puts "Locations   : " + tmpObj.locations
        puts "Description : " + tmpObj.description + "\n\n"
      end
    end
  end
  
end
