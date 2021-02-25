require "colorize"
require "tty-prompt"
require "net/http"
require "open-uri"
require "json"

PROMPT = TTY::Prompt.new

class Api

    URL = "https://api.artic.edu/api/v1/artworks/search?q=blue&limit=3"

    def get_blue
        uri = URI.parse(URL)
        response = Net::HTTP.get(uri)
        response.body
    end

    def parse_blue
        artworks = JSON.parse(self.get_blue)
    end
end
artworks = Api.new
puts artworks.parse_blue

