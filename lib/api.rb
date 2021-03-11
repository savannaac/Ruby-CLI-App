require "pry"

class API 
    def initialize(name)
        @name = name
        @url1 = "http://api.artic.edu/api/v1/artworks/search?q="
        @url2 = "&limit=3&fields=title,%20artist_display"
    end

    def get_color_api
        url = @url1 + @name + @url2
        data = HTTParty.get(url)
        response = data.parsed_response
        
        Color.new(response)
    end

    def get_mood_api
        url = @url1 + @name + @url2
        data = HTTParty.get(url)
        response = data.parsed_response
        
        Mood.new(response)
    end

    def get_appliance_api
        url = @url1 + @name + @url2
        data = HTTParty.get(url)
        response = data.parsed_response
        
        Appliance.new(response)
    end
end