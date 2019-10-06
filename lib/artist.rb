class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name= name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def new_song(genre, artist)
    Artist.new(genre, artist, self)
  end

  def genre
    songs.map do |song|
      song.artist
    end
  end

end
