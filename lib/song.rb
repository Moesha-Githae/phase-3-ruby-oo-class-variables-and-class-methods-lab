class song

    @@count = 0
    @@genres = []
    @@artists = []
    
    attr_accessor :name, :artist, :genre

    def initialize(name , artist, genre)
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

    def self.artists
        @@artists.uniq
    end
     
    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        @@genres.tally
    end

    def self.artists_count
        @@artists.tally
    end
    
end