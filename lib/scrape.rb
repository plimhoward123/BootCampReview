require 'nokogiri'
require 'open-uri'

class Scrape

  def get_page
    Nokogiri::HTML(open("https://www.coursereport.com/best-online-bootcamps"))
  end

  def scrape_data
    self.get_page.css(".school-li").each do |element|
      school_hash = {}
        school_hash[:name] = element.attribute("data-name").text
        school_hash[:rating] = element.css(".school-listing__subheader .rating-number").text
        school_hash[:locations] = element.css(".school-listing__subheader .location").text
        school_hash[:description] = element.css("p")[4].text.gsub("Â", "").gsub("â\u0080\u0099s","").gsub("â\u0080\u0093","")
        school_hash[:link] = "https://www.coursereport.com" + element.css("a").attribute("href").value
      School.new(school_hash)
    end
    
  end

end
