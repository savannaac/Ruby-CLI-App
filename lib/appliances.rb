require "pry"

class Appliance
    attr_accessor :name, :title, :artist_display
    @@all = []

    def initialize(response)
        #@name = name
        @title = response["data"][0]["title"]
        @artist_display = response["data"][0]["artist_display"]
        
        @@all << self
    end

    def self.all
        @@all
    end
end
    #stove
    #def get_stove_api
    #    url = "http://api.artic.edu/api/v1/artworks/search?q=stove&limit=3&fields=title,%20artist_display"
    #    data = HTTParty.get(url)
    #    responses = data.parsed_response
    #end

    #def stove_artwork
    #    appliance = get_stove_api
    #    title = appliance["data"][0]["title"]
    #    artist_display = appliance["data"][0]["artist_display"]
    #    puts title.magenta + ", " + artist_display
    #end

    #def self.get_stove
    #    artwork = Appliance.new
    #    puts artwork.stove_artwork
    #end

    #refrigerator
    #def get_refrigerator_api
    #    url = "http://api.artic.edu/api/v1/artworks/search?q=refrigerator&limit=3&fields=title,%20artist_display"
    #    data = HTTParty.get(url)
    #    response = data.parsed_response
    #end

    #def refrigerator_artwork
    #    appliance = get_refrigerator_api
    #    title = appliance["data"][0]["title"]
    #    artist_display = appliance["data"][0]["artist_display"]
    #    puts title.magenta + ", " + artist_display
    #end

    #def self.get_refrigerator
    #    artwork = Appliance.new
    #    puts artwork.refrigerator_artwork
    #end

    #toilet
    

    #def data
    #    url = get_appliance_api
    #    data = url["data"][0]
    #end

    #def title
    #    api = data
    #    title = api["title"]
    #end

    #def artist_display
    #    api = data
    #    artist_display = api["artist_display"]
    #end

    #def appliance_artwork
    #    puts title.magenta + ", " + artist_display
    #end

    #def appliance_artwork
        #appliance = get_appliance_api
        #title = appliance["data"][0]["title"]
        #artist_display = appliance["data"][0]["artist_display"]
        #puts title.magenta + ", " + artist_display
    #end

    #def self.get_appliance
    #    artwork = Appliance.new
    #    puts artwork.title.magenta + ", " + artwork.artist_display
    #end