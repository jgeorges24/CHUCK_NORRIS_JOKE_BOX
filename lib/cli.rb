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
        
        #display
        #user_input
        #API.new.get_chuck_jokes TOSSED THIS IN INITIALIZE TO GET THIS UPON INSTANCE.
        #display
        # Chuck_Jokes.new.(jokes_data)
      end

 #<<----------DEFINED METHODS BELOW ----------->>>>

      def greeting(name)
        puts "Welcome #{name}, don't mind my mom in the back.. this is my sancuary of The Great Chuck Norris!"
        sleep(2)
        puts "So this is where the magic happens, remember Chuck Norris is god around here.."
        sleep(2)
        puts "So do you want to hear some jokes or nah? yes or no?"
      end


      def menu
        #code for the menu goes here...
        selection = user_input
        
        if selection == "yes"
          #something happens
          jokeslist

        elsif selection == "no"
          #this happens...
          goodbye
        else
          #okay this was an invalid response...
          invalid_command
        end
      end

      #what if user says yes???

      def jokeslist # <<<<---- if user selects yes ----->>>

        Chuck_Joke.all
      end


      def goodbye # if user says no
        puts "Thanks for coming to my mom's house...stop bye for some more fun..."
        exit
      end

      def invalid_command #<<< if invalid comman ---> side not used menu method in  this method!!!
        puts "HOW DARE YOU!? this is not what i asked of you... yes or no?!?"
        sleep(2)
        puts "please type yes or no, nothing else suckerr..."
        menu
      end

      def display
        #display data goes here.....
        array_jokes.all
      end

      def user_input
          gets.strip
        #more code if else statement...
      end

      def Three_Jokes


      end

      def Two_Jokes


      end


end