require 'pry'

class Song
    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_count = []
    @@artist_count = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name 
        @artist = artist
        @genre = genre 
        @@count +=1
        @@artists << artist
        @@genres << genre
    end

    def self.count
        @@count
    end

    def self.artists
        new_arr = @@artists.uniq
        new_arr
    end

    def self.genres
        new_arr = @@genres.uniq
        new_arr 
    end

    def self.genre_count
        @@genre_count = @@genres.tally
    end

    def self.artist_count 
        @@artist_count = @@artists.tally 
    end

end