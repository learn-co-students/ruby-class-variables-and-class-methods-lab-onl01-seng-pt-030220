class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  def initialize(a, b, c)
    @name = a
    @artist = b
    @genre = c
    @@count += 1
      @@genres << genre
    @@artists << artist
  end
  def self.count
    @@count
  end
  def self.genres
    arr =@@genres.uniq
  end
  def self.artists
    arr = @@artists.uniq
  end

  def self.genre_count
    obj = {}
    @@genres.each do |para|
      if obj[para] == nil
        obj[para] = 0
      end
      obj[para] += 1
    end
    obj
  end

  def self.artist_count
    obj = {}
    @@artists.each do |para|
      if obj[para] == nil
        obj[para] = 0
      end
      obj[para] += 1
    end
    obj
  end
end
