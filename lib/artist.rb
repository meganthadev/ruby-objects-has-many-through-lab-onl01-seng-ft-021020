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
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    self.songs.map {|song| song.genre }
  end

  def self.all
    @@all
  end

end
