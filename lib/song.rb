class Song
  
  @@count= 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}
  
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @@count +=1
    @name = name
    @artist = artist
    @genre = genre
    
    @@artists << artist
      @@genres << genre
  
    if  @@genre_count[@genre] != nil
      @@genre_count[@genre] = @@genre_count[@genre] + 1
    else
      @@genre_count[@genre] = 1
    end
    if @@artist_count[@artist] != nil
      @@artist_count[@artist] = @@artist_count[@artist] + 1
    else
      @@artist_count[@artist] = 1
    end
  end
  
  def self.count
    @@count
  end
  def self.artists
    new_artists = []
    @@artists.each do |artist|
      if !new_artists.include?(artist)
        new_artists << artist
      end
    end
      new_artists
  end
  def self.genres
    
    new_genres = []
    @@genres.each do |genre|
      if !new_genres.include?(genre)
        new_genres << genre
      end
    end
      new_genres
  end
  def self.genre_count
    @@genre_count
  end
  def self.artist_count
    @@artist_count
  end
  
end