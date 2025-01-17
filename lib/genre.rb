class Genre

    attr_reader :name, :artist

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select{ |song| song.genre == self }
    end

    def artists
        self.songs.map { |song| song.artist }.uniq
    end

end