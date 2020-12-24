require "pry"
class Song
attr_accessor :name, :artist

    @@all = []
    def initialize(name)
        @name = name
        save

        end

        def save
            self.class.all<<self
        end

        def self.all
            @@all
        end

        def self.new_by_filename(file_name)
            arr = file_name.split(" - ")
            artist = arr[0]
            song = arr[1]
            new_song = self.new(song)
            new_song.artist_name = artist
            new_song
        end
        
        def artist_name=(name)
        self.artist = Artist.find_or_create_by_name(name)
        artist.add_song(self)
        end
        

end