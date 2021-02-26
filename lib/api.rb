require 'pry'
require 'httparty'
require_relative './chuck_joke.rb'

class API

    def initialize
        @url = 'http://api.icndb.com/jokes/random/10?limitTo='
    end
    #made adjustments to the API above to accomadate the if else function of nerdy or explicit jokes.

    def get_chuck_jokes
        puts "---------grabbed data---------"
#-> The URL BELOW IS THE FORMAT WHAT WE WANT FROM THE API <-
        #http://api.icndb.com/jokes/random/10?limitTo=[nerdy]
        chuck_jokes_hash = HTTParty.get(@url)
        array_jokes = chuck_jokes_hash["value"]
        array_jokes.each do |joke_hash| 
        Chuck_Joke.new(joke_hash)
        #binding.pry
         end
        #binding.pry
    end

     def get_jokes_by_genre(input)
       @url =+ "[#{input}]"
       get_chuck_jokes
     
    
    end
end

#API.new.get_chuck_jokes


#<<<< -----------============--------->>>> NOTES FOR YOURSELF <<<< -----------============--------->>>>

# joke_hash has the jokes 
# joke_hash["joke"] returns just the jokes exclusively
#Chuck_Joke.new(joke_hash) creates new individual joke objects
#example => #<Chuck_Joke:0x00007fa1fb3c2360 @categories=[], @id=120, @joke="Chuck Norris played Russian Roulette with a fully loaded gun and won.">

# ------> def get_jokes_by_genre(input)
#@url =+ "[#{input}]"
#get_chuck_jokes end <---------