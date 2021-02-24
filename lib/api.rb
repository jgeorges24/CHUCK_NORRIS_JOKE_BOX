require 'pry'
# require_relative "../config/environment.rb"


    class API
        def initialize
            @url = 'http://api.icndb.com/jokes/random/10'
        end

        def get_chuck_jokes
            chuck_jokes_hash = HTTParty.get(@url)
            chuck_jokes_hash["value"]
        end
        binding.pry


    end
 