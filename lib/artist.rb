class Artist 
  attr_accessor :name 
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def songs 
    Song.all.find_all{|s|s.artist == self }
  end
end