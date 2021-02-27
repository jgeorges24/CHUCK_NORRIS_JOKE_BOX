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

    def self.one_joke
        @@all.detect.with_index do |x, tex|
            puts "#{tex + 1}. #{x.joke}"
        end
    end

    def self.joke
        # puts "#{@@all.joke}"
        @@all.collect.with_index do |z, index|
            puts "#{index + 1}. #{z.joke}" 
            
        end

    end

   

    # end
        

        # def 
        #     puts @@all
    #end
    # puts "chuck_jokes class has ran ---===---"
end
# end
# end

