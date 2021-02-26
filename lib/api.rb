class Api
    attr_accessor :color

    def self.api_url
        "https://api.artic.edu/api/v1/artworks/search?q=blue&limit=3"
    end

    def self.load_api
        response = RestClient.get(api_url + "/artworks" + "/artworks/{id}")
        data = JSON.parse(response.body)
        data.map { |color| Color.new}
    end

    def self.load_data
        load_colors
    end
end

    # URL = "https://api.artic.edu/api/v1/artworks/search?q=blue&limit=3"

    # def get_blue
      #  uri = URI.parse(URL)
      #  response = Net::HTTP.get(uri)
      #  response.body
    # end

    # def parse_blue
      #  artworks = JSON.parse(self.get_blue)
    #end


