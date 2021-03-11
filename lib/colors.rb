class Color
    attr_accessor :name, :title, :artist_display
    @@all = []

    def initialize(response)
        @title = response["data"][0]["title"]
        @artist_display = response["data"][0]["artist_display"]
        
        @@all << self
    end

    def self.all
        @@all
    end
end

