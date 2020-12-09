class Song
    attr_accessor :name,:artist
      @@all = []
      
    def initialize(name)
         @name=name
         @artist=artist
         @@all << self
    end
    def self.all
        @@all
    end
    def self.new_by_filename(file)
      song_title=file.chomp(".mp3").split(" - ")
      song=Song.new(song_title[1])
      song.artist_name =song_title[0]
      song
    end

    def artist_name=(name)
      self.artist = Artist.find_or_create_by_name(name)
      artist.add_song(self)
    end
end