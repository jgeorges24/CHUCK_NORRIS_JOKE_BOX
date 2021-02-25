require_relative '../config/environment.rb'


class CLI

  def initialize
    # API.new.get_chuck_jokes

  end

      #  puts "this is cli file"
      def run
        puts "hello"
        sleep(1)
        puts "whats is thy name?"
        greeting(user_input)
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
        selection = user_input

        if selection == "yes"
          #something happens
        elsif selection == "no"
          #this happens...
        else
          #okay this was an invalid response...
        end

        
      end

      def display
        #display data goes here.....
      end

      def user_input
          gets.strip
        #more code if else statement...
      end

end