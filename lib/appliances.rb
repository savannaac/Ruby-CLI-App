class Appliance

    #stove
    def get_stove_api
        url = "http://api.artic.edu/api/v1/artworks/search?q=stove&limit=3&fields=title,%20artist_display"
        data = HTTParty.get(url)
        responses = data.parsed_response
    end
    
    def stove_title
        title = get_stove_api
        title["data"][0]["title"]
    end

    def stove_artist_display
        artist_display = get_stove_api
        artist_display["data"][0]["artist_display"]
    end

    def self.get_stove
        artworks = Appliance.new
        puts artworks.stove_title.magenta + ", " + artworks.stove_artist_display
    end

    #refrigerator
    def get_refrigerator_api
        url = "http://api.artic.edu/api/v1/artworks/search?q=refrigerator&limit=3&fields=title,%20artist_display"
        data = HTTParty.get(url)
        response = data.parsed_response
    end

    def refrigerator_title
        title = get_refrigerator_api
        title["data"][0]["title"]
    end

    def refrigerator_artist_display
        artist_display = get_refrigerator_api
        artist_display["data"][0]["artist_display"]
    end

    def self.get_refrigerator
        artworks = Appliance.new
        puts artworks.refrigerator_title.magenta + ", " + artworks.refrigerator_artist_display
    end

    #toilet
    def get_toilet_api
        url = "http://api.artic.edu/api/v1/artworks/search?q=toilet&limit=3&fields=title,%20artist_display"
        data = HTTParty.get(url)
        response = data.parsed_response
    end

    def toilet_title
        title = get_toilet_api
        title["data"][0]["title"]
    end

    def toilet_artist_display
        artist_display = get_toilet_api
        artist_display["data"][0]["artist_display"]
    end

    def self.get_toilet
        artworks = Appliance.new
        puts artworks.toilet_title.magenta + ", " + artworks.toilet_artist_display
    end
end