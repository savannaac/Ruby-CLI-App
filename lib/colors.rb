class Color
    #attr_accessor :name

    #def initialize(name)
    #    @name = name
    #end

#yellow
    def get_yellow_api
        url = "http://api.artic.edu/api/v1/artworks/search?q=yellow&limit=3&fields=title,%20artist_display"
        data = HTTParty.get(url)
        response = data.parsed_response
    end

    def yellow_artwork
        color = get_yellow_api
        title = color["data"][0]["title"]
        artist_display = color["data"][0]["artist_display"]
        puts title.yellow + ", " + artist_display
    end

    def self.get_yellow
        artwork = Color.new
        puts artwork.yellow_artwork
    end

    #def get_color
    #    color = get_color_api
    #    color_title = color["data"][0]["title"]
    #    color_artist_display = color["data"][0]["artist_display"]
    #    artworks = Color.new(color)
    #    puts artworks.color_title.yellow + ", " + artworks.color_artist_display
    #end



    #blue
    def get_blue_api
        url = "http://api.artic.edu/api/v1/artworks/search?q=blue&limit=3&fields=title,%20artist_display"
        data = HTTParty.get(url)
        responses = data.parsed_response
    end
    
    def blue_artwork
        color = get_blue_api
        title = color["data"][0]["title"]
        artist_display = color["data"][0]["artist_display"]
        puts title.cyan + ", " + artist_display
    end

    def self.get_blue
        artwork = Color.new
        puts artwork.blue_artwork
    end

    #red
    def get_red_api
        url = "http://api.artic.edu/api/v1/artworks/search?q=red&limit=3&fields=title,%20artist_display"
        data = HTTParty.get(url)
        response = data.parsed_response
    end

    def red_artwork
        color = get_red_api
        title = color["data"][0]["title"]
        artist_display = color["data"][0]["artist_display"]
        puts title.red + ", " + artist_display
    end

    def self.get_red
        artwork = Color.new
        puts artwork.red_artwork
    end
end

