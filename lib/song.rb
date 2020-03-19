class Song
  
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)

    @name = name
    @artist = artist
    @genre = genre
    @@genres << @genre
    @@artists << @artist
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.artists
      @@artists.uniq!
  end
    
  def self.genres
    @@genres.uniq!
  end
  
  def self.genre_count
    Hash[*@@genres.group_by{ |genres| genres }.flat_map{ |key, value| [key, value.size] }]  
  end
  
  def self.artist_count
    Hash[*@@artists.group_by{ |artist| artist }.flat_map{ |key, value| [key, value.size] }]
  end

end
