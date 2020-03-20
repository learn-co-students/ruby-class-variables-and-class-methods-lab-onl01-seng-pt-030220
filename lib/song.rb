class Song

    @@count = 0
    @@genres = []
    @@genre_count = {}
    @@artists = []
    @@artist_count = {}

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name, @artist, @genre = name, artist, genre

        @@count += 1
        @@genres << genre
        @@artists << artist

        if @@genre_count[genre]
            @@genre_count[genre] += 1
        else 
            @@genre_count[genre] = 1
        end

        if @@artist_count[artist]
            @@artist_count[artist] += 1
        else 
            @@artist_count[artist] = 1
        end
    end

    def self.count
        @@count
    end

    def self.genres
        genre_return = []
        @@genres.each do |genre|
            if !genre_return.include? genre
                genre_return << genre
            end
        end
        genre_return
    end

    def self.genre_count
        @@genre_count
    end

    def self.artists
        artist_return = []
        @@artists.each do |artist|
            if !artist_return.include? artist
                artist_return << artist
            end
        end
        artist_return
    end

    def self.artist_count
        @@artist_count
    end
    
end