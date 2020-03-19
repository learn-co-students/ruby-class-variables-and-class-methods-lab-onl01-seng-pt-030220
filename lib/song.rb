class Song 
  attr_accessor :name
  attr_reader :genre, :artist
  @@count=0
  @@genres = []
  @@artists = []
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@artists << artist
    @@count+=1
  end
  
  def artist=(artist)
    
    @artist = artist
  
      
      @@artists << artist
      
    
    
    
    
    
  end
  def Song.genres
    @@genres.uniq
  end
  def Song.artists
    @@artists.uniq
  end
    
  def genre=(genre)
    
      @@genres << genre
    
    @@genre = genre
  end
  
  def Song.genre_count
    hash = {}
    @@genres.each do |element|
      if not hash.key?(element)
      hash[element] = 1 
    else
      hash[element] = hash[element] + 1
    end
    end
    hash
end
  
   def Song.artist_count
    hash = {}
    @@artists.each do |element|
      if not hash.key?(element)
      hash[element] = 1 
    else
      hash[element] = hash[element] + 1
    end
    end
    hash
end

  def Song.count
  
    @@count
  end

end