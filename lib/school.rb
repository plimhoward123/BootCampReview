class School
  attr_accessor :name, :locations, :description, :rating, :link
  @@all = []
  
  def initialize(info_hash)
    info_hash.each {|k,v| self.send(("#{k}="), v)}
    @@all << self
  end
  
  def self.all
    @@all
  end
end