require 'nokogiri'
require 'open-uri'

class Scrape

  def get_page
    Nokogiri::HTML(open("https://www.coursereport.com/best-online-bootcamps"))
  end

  def scrape_data
    self.doc.css(".school-li").each do |element|
      puts element
    end
  end

end
