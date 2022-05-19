class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []
    @@genre_hash = {}
    @@artist_hash = {}
    
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
        @@genres.each do |genre|
            if @@genre_hash[genre]
                #genre exists in hash, increment count
                @@genre_hash[genre] += 1
            else
                #genre does not exist in hash, so create new key value pair in hash
                @@genre_hash[genre] = 1
            end
        end
        @@genre_hash
    end

    def self.artist_count
        @@artists.each do |artist|
            if @@artist_hash[artist]
                #artist exists in hash, increment count
                @@artist_hash[artist] += 1
            else
                #artist does not exist in hash, so create new key value pair in hash
                @@artist_hash[artist] = 1
            end
        end
        @@artist_hash
    end
    
    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

end