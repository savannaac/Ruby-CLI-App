class Mood

    #happy
    def get_happy_api
        url = "http://api.artic.edu/api/v1/artworks/search?q=happy&limit=3&fields=title,%20artist_display"
        data = HTTParty.get(url)
        responses = data.parsed_response
    end

    def happy_artwork
        mood = get_happy_api
        title = mood["data"][0]["title"]
        artist_display = mood["data"][0]["artist_display"]
        puts title.green + ", " + artist_display
    end

    def self.get_happy
        artwork = Mood.new
        puts artwork.happy_artwork
    end

    #sad
    def get_sad_api
        url = "http://api.artic.edu/api/v1/artworks/search?q=sad&limit=3&fields=title,%20artist_display"
        data = HTTParty.get(url)
        response = data.parsed_response
    end

    def sad_artwork
        mood = get_sad_api
        title = mood["data"][0]["title"]
        artist_display = mood["data"][0]["artist_display"]
        puts title.cyan + ", " + artist_display
    end

    def self.get_sad
        artwork = Mood.new
        puts artwork.sad_artwork
    end

    #anxious
    def get_anxious_api
        url = "http://api.artic.edu/api/v1/artworks/search?q=anxious&limit=3&fields=title,%20artist_display"
        data = HTTParty.get(url)
        response = data.parsed_response
    end

    def anxious_artwork
        mood = get_anxious_api
        title = mood["data"][0]["title"]
        artist_display = mood["data"][0]["artist_display"]
        puts title.red + ", " + artist_display
    end

    def self.get_anxious
        artwork = Mood.new
        puts artwork.anxious_artwork
    end
end

