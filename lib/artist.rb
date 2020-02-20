require 'pry'
class Artist

  attr_accessor :name, :songs

 

  def initialize(name)
    @name = name
  end
  
  def songs
    Song.all.select do |song|
    song.artist = self
  end 
end 
 
 
  def add_song(song)
   song.artist = self
  end 

  def add_song_by_name(name)
    #takes in an argument of a song name, creates a new song with it and associates the song and artist
    artist = Song.new(name)
    add_song(artist)
  end

  def self.song_count
    #is a class method that returns the total number of songs associated to all existing artists
    Song.all.count
  end

end