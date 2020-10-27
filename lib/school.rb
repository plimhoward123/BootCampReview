class School
  attr_reader :name, :locations, :descriptions, :rating, :link
  @@all = []
  
  def initialize(info_hash)
    info_hash.each {|k,v| self.send(("#{k}="), v)}
    @@all << self
  end
  
  def all
    @@all
  end
end