require "pry"
class Song 
    @@count = 0 

    def self.count 
        @@count 
    end

    @@genres = [] 
    @@artists = [] 


    def self.genres
        @@genres.uniq 
    end

    def self.artists 
        @@artists.uniq 
    end
    
    

    
    attr_accessor :name, :artist, :genre 

    def initialize(name, artist, genre)
        @name = name 
        @artist = artist 
        @genre = genre
        @@count +=1 
        @@genres << self.genre
        @@artists << self.artist
    end
end
