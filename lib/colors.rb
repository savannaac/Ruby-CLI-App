class Color

    #blue
    def get_blue_api
        url = "http://api.artic.edu/api/v1/artworks/search?q=blue&limit=3&fields=title,%20artist_display"
        data = HTTParty.get(url)
        responses = data.parsed_response
    end
    
    def blue_title
        title = get_blue_api
        title["data"][0]["title"]
    end

    def blue_artist_display
        artist_display = get_blue_api
        artist_display["data"][0]["artist_display"]
    end

    def self.get_blue
        artworks = Color.new
        puts artworks.blue_title.cyan + ", " + artworks.blue_artist_display
    end

    #red
    def get_red_api
        url = "http://api.artic.edu/api/v1/artworks/search?q=red&limit=3&fields=title,%20artist_display"
        data = HTTParty.get(url)
        response = data.parsed_response
    end

    def red_title
        title = get_red_api
        title["data"][0]["title"]
    end

    def red_artist_display
        artist_display = get_red_api
        artist_display["data"][0]["artist_display"]
    end

    def self.get_red
        artworks = Color.new
        puts artworks.red_title.red + ", " + artworks.red_artist_display
    end

    #yellow
    def get_yellow_api
        url = "http://api.artic.edu/api/v1/artworks/search?q=yellow&limit=3&fields=title,%20artist_display"
        data = HTTParty.get(url)
        response = data.parsed_response
    end

    def yellow_title
        title = get_yellow_api
        title["data"][0]["title"]
    end

    def yellow_artist_display
        artist_display = get_yellow_api
        artist_display["data"][0]["artist_display"]
    end

    def self.get_yellow
        artworks = Color.new
        puts artworks.yellow_title.yellow + ", " + artworks.yellow_artist_display
    end
end

