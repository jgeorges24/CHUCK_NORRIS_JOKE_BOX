require 'pry'
#  require_relative "../config/environment.rb"

    class API
     
        url = 'https://www.cheapshark.com/api/1.0/games?ids=128,129,130,224,123,29,145'

        def Get_GamesData(url)
            topgames_hash = HTTParty.get(url)
                #  topgames_hash.each_with_index do |games_data, index|
                #     puts "these are the games #{index} .  #{games_data}, "
                #  end
            
        end
    end
    topgames_hash = HTTParty.get(url)
    binding.pry