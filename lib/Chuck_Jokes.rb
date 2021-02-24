
class Chuck_Jokes
    @@all = []

    # puts "this is the jokes_data class"
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