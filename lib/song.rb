class Song 

  @@count = 0 
  @@artists = [ ]
  @@genres = [ ]
  
  attr_accessor :name, :artist, :genre
  
  def initialize(name,artist,genre)
      @name = name
      @artist = artist
      @genre = genre
      @@artists << artist
      @@genres << genre
      @@count += 1 
  end
  
  def self.count
    @@count
  end 
  
  def self.genre_count
    genre_hash = { }
    @@genres.each do |genre|
      if genre_hash[genre]
        genre_hash[genre] += 1 
      else
        genre_hash[genre] = 1
      end
    end
    return genre_hash
  end
  
  def self.artist_count
    artist_hash = { }
    @@artists.each do |artist|
      if artist_hash[artist]
        artist_hash[artist] += 1 
      else
        artist_hash[artist] = 1
      end 
    end 
    return artist_hash
  end 
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end

end 