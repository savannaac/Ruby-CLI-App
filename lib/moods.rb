class Mood

    #happy
    def get_happy_api
        url = "http://api.artic.edu/api/v1/artworks/search?q=happy&limit=3&fields=title,%20artist_display"
        data = HTTParty.get(url)
        responses = data.parsed_response
    end
    
    def happy_title
        title = get_happy_api
        title["data"][0]["title"]
    end

    def happy_artist_display
        artist_display = get_happy_api
        artist_display["data"][0]["artist_display"]
    end

    def self.get_happy
        artworks = Mood.new
        puts artworks.happy_title.green + ", " + artworks.happy_artist_display
    end

    #sad
    def get_sad_api
        url = "http://api.artic.edu/api/v1/artworks/search?q=sad&limit=3&fields=title,%20artist_display"
        data = HTTParty.get(url)
        response = data.parsed_response
    end

    def sad_title
        title = get_sad_api
        title["data"][0]["title"]
    end

    def sad_artist_display
        artist_display = get_sad_api
        artist_display["data"][0]["artist_display"]
    end

    def self.get_sad
        artworks = Mood.new
        puts artworks.sad_title.cyan + ", " + artworks.sad_artist_display
    end

    #angry
    def get_angry_api
        url = "http://api.artic.edu/api/v1/artworks/search?q=yellow&limit=3&fields=title,%20artist_display"
        data = HTTParty.get(url)
        response = data.parsed_response
    end

    def angry_title
        title = get_angry_api
        title["data"][0]["title"]
    end

    def angry_artist_display
        artist_display = get_angry_api
        artist_display["data"][0]["artist_display"]
    end

    def self.get_angry
        artworks = Mood.new
        puts artworks.angry_title.red + ", " + artworks.angry_artist_display
    end
end

