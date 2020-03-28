class Song
attr_accessor :name, :artist, :genre
@@count = 0
@@artists = []
@@genres = []

  def initialize(name, artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre

  end

  def self.count
    @@count
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.artist_count
  artist_count = {} #creates the hash
  @@artists.each do |artist| #iterates over the array
    if artist_count[artist]
      artist_count[artist] += 1
    else
      artist_count[artist] = 1
    end
  end
    artist_count #returns hash
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
  genre_count = {} #creates the hash
  @@genres.each do |genre| #iterates over the array
    if genre_count[genre]
      genre_count[genre] += 1
    else
      genre_count[genre] = 1
    end
  end
    genre_count #returns hash
  end

  # def self.genre_count
  #   genres_count = {}
  #   @@genres.each do |genres|
  #     if genres_count|genres|
  #       genres_count|genres| += 1
  #     else
  #       genres_count|genres| = 1
  #     end
  #   end
  #   genres_count
  # end


  # def self.artist
  #   @@artist << self
  # end

  # def name=(name)
  #   @name = name
  # end
  #
  # def self.name
  #   @name
  # end

  # def artist=(artist)
  #   @artist = artist
  # end
  #
  # def self.artist
  #   @@artist
  # end

end
