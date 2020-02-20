require 'pry'
class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def artist_name
    # knows the name of its artist
    #returns nil if the song does not have an artist
    if !@artist
    else
      @artist.name
    end
  end

  def self.all
    @@all
  end

end