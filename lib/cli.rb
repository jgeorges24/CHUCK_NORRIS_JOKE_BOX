require_relative '../config/environment.rb'


class CLI

  def initialize
    # API.new.get_chuck_jokes

  end

      #  puts "this is cli file"
      def run
        greeting
        #menu
        #user_input
        API.new.get_chuck_jokes
        #display
        # Chuck_Jokes.new.(jokes_data)
      end

      def greeting(name)
        puts "Welcome #{name}, this is my sancuary of The Great Chuck Norris!"
        sleep(2)
        puts "So this is where the magic happens, remember Chuck Norris is god..."
        sleep(1)
        puts "So do you want to hear some jokes or nah? yes or no?"
      end
      
      def menu
        #code for the menu goes here...
        puts ""

        
      end

      def display
        #display data goes here.....
      end

      def user_input
          gets.strip
        #more code if else statement...
      end

end