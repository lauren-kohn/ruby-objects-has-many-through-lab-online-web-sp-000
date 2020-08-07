class Song 
  
  attr_accessor :title, :genre, :artist 
  
  @@all = []
  
  def initialize(title, genre)
    @title = title
    @genre = genre 
    @@all << self 
  end 
  
end