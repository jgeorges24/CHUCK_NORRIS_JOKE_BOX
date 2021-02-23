Class API

    URL = "https://www.cheapshark.com/api/1.0/games?ids=128,129,130,224,123,121,145"

    def get_gamesData
        topgames_hash = HTTParty.get(URL)
        
        topgames_hash.each do |xtopgames| 

        end



    end

end