require "pry"
class Song 
    @@count = 0 
    @@genres = [] 
    @@artists = []

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
        new_hash = {} 
        self.genres.each do |a|
            new_hash[a] = @@genres.count(a)
        end
        new_hash
    end

    def self.artist_count 
        artist_hash = {} 
        self.artists.each  do |b|
            artist_hash[b] = @@artists.count(b)
        end
        artist_hash 
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
