class Appliance

    #stove
    def get_stove_api
        url = "http://api.artic.edu/api/v1/artworks/search?q=stove&limit=3&fields=title,%20artist_display"
        data = HTTParty.get(url)
        responses = data.parsed_response
    end

    def stove_artwork
        appliance = get_stove_api
        title = appliance["data"][0]["title"]
        artist_display = appliance["data"][0]["artist_display"]
        puts title.magenta + ", " + artist_display
    end

    def self.get_stove
        artwork = Appliance.new
        puts artwork.stove_artwork
    end

    #refrigerator
    def get_refrigerator_api
        url = "http://api.artic.edu/api/v1/artworks/search?q=refrigerator&limit=3&fields=title,%20artist_display"
        data = HTTParty.get(url)
        response = data.parsed_response

        # puts self
    end

    def refrigerator_artwork
        appliance = get_refrigerator_api
        title = appliance["data"][0]["title"]
        artist_display = appliance["data"][0]["artist_display"]
        puts title.magenta + ", " + artist_display
    end

    def self.get_refrigerator
        artwork = Appliance.new
        puts artwork.refrigerator_artwork
    end

    #toilet
    def get_toilet_api
        url = "http://api.artic.edu/api/v1/artworks/search?q=toilet&limit=3&fields=title,%20artist_display"
        data = HTTParty.get(url)
        response = data.parsed_response
    end

    def toilet_artwork
        appliance = get_toilet_api
        title = appliance["data"][0]["title"]
        artist_display = appliance["data"][0]["artist_display"]
        puts title.magenta + ", " + artist_display
    end

    def self.get_toilet
        artwork = Appliance.new
        puts artwork.toilet_artwork
    end
end