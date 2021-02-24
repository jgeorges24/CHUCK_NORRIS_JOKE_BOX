
class Chuck_Jokes
    @@all = []

     puts "this is the Chuck_Jokes class"
    def initialize(jokes_data)
        jokes_data.each do |key, value|
            self.class.attr_accessor(key)
            self.send(("#{key}="), value)
            end
            
            @@all << self
        end

        def self.all
            @@all
        end


end