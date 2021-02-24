require 'pry'
require 'httparty'
class API

    def initialize
        @url = 'http://api.icndb.com/jokes/random/10'
    end

    def get_chuck_jokes
        chuck_jokes_hash = HTTParty.get(@url)
        binding.pry
    end
    
end

API.new.get_chuck_jokes