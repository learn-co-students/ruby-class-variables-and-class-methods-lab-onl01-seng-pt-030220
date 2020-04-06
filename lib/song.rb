class Song

attr_accessor :name, :artist , :genre
@@count =0
@@artists=[]
@@genres=[]
@@genre_count = {}
@@artist_count ={}
def initialize(name,artist,genre)
  @name=name
  @artist=artist
  @genre=genre
  @@count +=1
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
    count=0
    @@genres.each do |key|
       po=@@genres.pop
      if @@genres.include?(key)
          count +=1
          @@genre_count[po]=count
      else
          @@genre_count[po]=count
     end

    end
    @@genre_count

end

def self.artist_count

  count=0
  @@artists.each do |key|
     po=@@artists.pop
    if @@artists.include?(key)
        count +=1
        @@artist_count[po]=count
    else
        @@artist_count[po]=count
   end

  end
  
  @@artist_count

end

end
