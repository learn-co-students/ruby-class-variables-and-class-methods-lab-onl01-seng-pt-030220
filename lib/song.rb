class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name_of_song = name
        @genre_of_song = genre
        @artist_of_song = artist
        @@count += 1
        @@genres << @genre_of_song
        @@artists << @artist_of_song
    end 
    def name
        @name_of_song
    end 
    def artist 
        @artist_of_song
    end 
    def genre
        @genre_of_song
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
        genre_count = {}
        @@genres.each do |genre|
            if genre_count[genre]
                genre_count[genre] += 1
            else
                genre_count[genre] = 1
            end
        end 
        genre_count
    end
    def self.artist_count
        artist_count = {}
        @@artists.each do |artist|
            if artist_count[artist]
                artist_count[artist] += 1
            else
                artist_count[artist] = 1
            end 
        end
        artist_count
    end

end 