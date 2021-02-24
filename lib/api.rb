require 'pry'
require 'httparty'
class API

    def initialize
        @url = 'http://api.icndb.com/jokes/random/10'
    end

    def get_chuck_jokes
        chuck_jokes_hash = HTTParty.get(@url)
        array_jokes = chuck_jokes_hash["value"]
        array_jokes.each do |joke_hash|
        Chuck_Jokes.new(joke_hash)
        end
        binding.pry
    end
    
    # def get_quick_3jokes
    #     chuck_jokes_hash["value"][0..3]

    # end


end

API.new.get_chuck_jokes