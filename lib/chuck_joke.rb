# require_relative '../config/environment.rb'


class Chuck_Joke
    @@all = []
    #attr_accessor :id, :joke, :categories

     #puts "this is the Chuck_Jokes class"
    # attr_accessor :id, :joke
    def initialize(jokes_data)
        jokes_data.each do |key, value|

            self.class.attr_accessor(key)
            self.send(("#{key}="), value) #if self.attr_accessor.include?(key) <-- this code will be used to filter out the other categories if we needed them or not...
            #self.id=(value)
            #self.joke=(value)
            end
            
            @@all << self
        end

        def self.all
            @@all
        end

    def self.single_joke
        single_j = joke_hash["joke"]
        single_j.each do |x|
            puts "#{x.joke}"
        end
    

    end
        

        # def 
        #     puts @@all
    #end
    # puts "chuck_jokes class has ran ---===---"
end
