require 'pry'

class Artist 
  
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end 
  
  def self.all 
    @@all
  end 
  
  def new_song(name, genre)
    Song.new(name, self, genre)
  end
  
  def songs 
    binding.pry
    Song.all.select do |s|
      s.artist == self 
    end 
  end
  
  def genres 
    types = songs.collect do |s|
      s.genre 
    end 
    types
  end
  
end 