
class Top_Games
    @@all = []

    # puts "this is the Top_games class"
    def initialize(games_data)
        games_data.each do |key, value|
            self.class.attr_accessor(key)
            self.send(("#{key}="), value)
            end
            
            @@all << self
        end

        def self.all
            @@all
        end


end