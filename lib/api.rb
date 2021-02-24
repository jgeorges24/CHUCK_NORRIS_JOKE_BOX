require 'pry'
require 'httparty'
class API
        @url = 'http://api.icndb.com/jokes/random/10'

    def get_chuck_jokes
        chuck_jokes_hash = HTTParty.get(@url)
    binding.pry   
    end
        
end
 