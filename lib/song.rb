require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []
  def initialize(name, artist, genre)
    @@count += 1
    @@genres << genre
    @@artists << artist
    @name = name
    @artist = artist
    @genre = genre
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    @@genres.tally
  end

  def self.artist_count
    @@artists.tally
  end


end

s1 = Song.new("Paparazzi", "Lady Gaga", "Pop")
s2 = Song.new("Toxic", "Britney Spears", "Pop")
s3 = Song.new("Do I wanna know", "Arctic Monkeys", "Rock")
s4 = Song.new("Symphony n5", "Beethoven", "Classic")

binding.pry