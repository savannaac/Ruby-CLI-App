require "net/http"
require "open-uri"
require "json"
require "httparty"
require "colorize"

class Api
    #attr_accessor :color
    include HTTParty

    URL = "http://api.artic.edu/api/v1/artworks/search?q=blue&limit=3&fields=title,%20artist_display"

    def get_api
        data = HTTParty.get(URL)
        responses = data.parsed_response
    end
    
    def artwork_title
        title = get_api
        title["data"][0]["title"]
    end

    def artwork_artist_display
        artist_display = get_api
        artist_display["data"][0]["artist_display"]
    end

    def self.get_blue
        artworks = Api.new
        puts artworks.artwork_title.cyan + ", " + artworks.artwork_artist_display
    end
end
artworks = Api.new
puts artworks.artwork_title.cyan + ", " + artworks.artwork_artist_display
