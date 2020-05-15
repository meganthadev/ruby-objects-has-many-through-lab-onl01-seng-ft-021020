class Artist

  attr_accessor :name, :genre
  @@all = []

  def initialize (name)
    @name = name
    @songs = []
    @@all << self
  end

  def new_song(name, genre)
    @songs << song
    song.artist = self
  end

  def songs
    @songs 
  end   

  def genres
    Song.all.map do |song|
      song.genre
    end
  end

  def self.all
    @@all
  end

end
