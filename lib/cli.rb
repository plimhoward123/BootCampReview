require 'pry'

class CLI
  
  def initialize
    self.intro
  end
  
  def intro
    puts " Enter 1-35 to expand information on the Boot Camp "
    puts "              Press 0 to exit                      "
    puts "---------------------------------------------------"
    scrape = Scrape.new.scrape_data
    
    #Iterate through each instance of a school object with index
    School.all.each_with_index do |obj, i|
      puts (i + 1) .to_s + ". " + obj.name
    end
  end
  
end