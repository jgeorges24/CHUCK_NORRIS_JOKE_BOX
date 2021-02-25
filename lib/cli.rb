require_relative '../config/environment.rb'


class CLI

  def initialize
     API.new.get_chuck_jokes
  end
  
      #  ____------THIS IS WHERE WE START _____-----------
      def run
        puts "hello"
        sleep(1)
        puts "whats is thy name?"
        greeting(user_input) #<<--- check greeting method to see whats going on
        menu #<----- at this pointe we are asking user for y or n controle flow
        #user_input
        #API.new.get_chuck_jokes TOSSED THIS IN INITIALIZE TO GET THIS UPON INSTANCE.
        #display
        # Chuck_Jokes.new.(jokes_data)
      end

 #<<----------DEFINED METHODS BELOW ----------->>>>

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
          goodbye
        else
          #okay this was an invalid response...
          invalid_command
        end

      end

      def goodbye
        puts "Thanks for coming to my mom's house...stop bye for some more fun..."
      end

      def invalid_command #<<<---------===== side not used menu method in  this method!!!
        puts "HOW DARE YOU!? this is not what i asked of you... yes or no?!?"
        menu
      end

      def display
        #display data goes here.....
      end

      def user_input
          gets.strip
        #more code if else statement...
      end

end