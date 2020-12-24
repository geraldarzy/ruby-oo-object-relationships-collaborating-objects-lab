class MP3Importer
    attr_accessor :path, :files
    def initialize(path)
        @path = path
        @files = []
        
    end

    def import
        files.each {|x| Song.new_by_filename(x)}
        
    end

    def files
        #Dir.children("testdir")   #=> ["config.h", "main.rb"]
        Dir.children(path)

        
    end



end

