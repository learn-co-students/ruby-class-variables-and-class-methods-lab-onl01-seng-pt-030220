class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
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
    g_count = {}
    @@genres.uniq.each{|genre| g_count[genre] = @@genres.count(genre)}
    g_count
  end

  def self.artist_count
    a_count = {}
    @@artists.uniq.each{|artist| a_count[artist] = @@artists.count(artist)}
    a_count
  end
end
