require 'pry'
require 'httparty'
require_relative './chuck_joke.rb'

class API

    def initialize
        @url = 'http://api.icndb.com/jokes/random/10'
    end

    def get_chuck_jokes
        chuck_jokes_hash = HTTParty.get(@url)
        array_jokes = chuck_jokes_hash["value"]
        array_jokes.each do |joke_hash|
        Chuck_Joke.new(joke_hash)
        binding.pry
         end
        #binding.pry
    end
end

API.new.get_chuck_joke