require "pry"
class Artist
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|x|x.artist == self}

    end

    def add_song(song)
        song.artist = self
    end

    def self.find_or_create_by_name (name)
        self.all.find{|x|x.name == name} ? self.all.find{|x|x.name == name} : self.new(name)
    
    end
    
    def print_songs
        songs.each{|x| puts x.name }
    end
end