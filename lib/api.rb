require "net/http"
require "open-uri"
require "json"
require "httparty"

class Api
    #attr_accessor :color
    include HTTParty

    URL = "http://api.artic.edu/api/v1/artworks/search?q=blue&limit=3&fields=title,%20artist_display"
    
    def get_api   
        data = HTTParty.get(URL)
        responses = data.parsed_response
        puts responses["data"][0]["title"]
    end

    #def get_api
    #    uri = URI.parse(URL)
    #    response = Net::HTTP.get_response(uri)
    #    response.body
    #end

    #def parse_data
    #    artworks = JSON.parse(self.get_api)
    #    artworks.collect { |artwork| artwork["title"] }
    #end
end
artworks = Api.new
puts artworks.get_api

