require 'pry'
require_relative "../config/environment.rb"


    class API
        def initialize
            @url = 'http://api.icndb.com/jokes/random/10'
        end

        def get_games_titles
            games_hash = HTTParty.get(@url)
            xgames = games_hash
        binding.pry
        end


    end
 