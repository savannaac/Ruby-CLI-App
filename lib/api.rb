require "pry"

class API 
    def initialize(name)
        @name = name
        @url1 = "http://api.artic.edu/api/v1/artworks/search?q="
        @url2 = "&limit=3&fields=title,%20artist_display"
    end

    def get_appliance_api
        #url = ("http://api.artic.edu/api/v1/artworks/search?q=" + "#{@name}" + "&limit=3&fields=title,%20artist_display")
        #url = "http://api.artic.edu/api/v1/artworks/search?q=stove&limit=3&fields=title,%20artist_display"
        url = @url1 + @name + @url2
        data = HTTParty.get(url)
        response = data.parsed_response
        
        Appliance.new(response)
    end
end