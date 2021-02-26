


class CLI

  def initialize

     # API.new.get_chuck_jokes
  end

      #  <<<<<____------ THIS IS WHERE WE START _____----------->>>>
      def run
        puts "hello"
        sleep(1)
        puts "whats is thy name?"
        sleep(1)
        greeting(user_input) #<<--- check greeting method to see whats going on
        
        menu #<----- at this pointe we are asking user for y or n controle flow
        #display # <----- this is suppose to display the joke or jokes to the user
        #jokeslist # <------ this is suppose to display the joke or jokes to the user
        
        #binding.pry
        
        #API.new.get_chuck_jokes TOSSED THIS IN INITIALIZE TO GET THIS UPON INSTANCE.
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
          
          puts "okay, well you wanna hear a nerdy or explicit jokes?"
          # pick_genre -> Nerdy or Explicit
            if selection == "nerdy"
              API.new.get_jokes_by_genre("nerdy")
            else
              selection == "explicit"
              API.new.get_jokes_by_genre("explicit")
            end
              #jokeslist_with_index

        elsif selection == "no"
          #this happens...
          puts " "
          goodbye
        else
          #okay this was an invalid response...
          puts " "
          invalid_command
          puts " "
        end
      
      end

      #what if user says yes???

      def jokeslist # <<<<---- if user selects yes ----->>>
         #an array of all of the objects
        Chuck_Joke.all.each do |joke|
          puts "#{joke.joke}"
        end
      end

      def jokeslist_with_index
        Chuck_Joke.all.each_with_index do |joke, index|
          puts "#{index + 1}. <-> #{joke.joke}"
          
        end

      end


      def goodbye # if user says no
        sleep(1)
        puts "Thanks for coming to my mom's house...stop bye for some more fun..."
        sleep(1)
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
        
      end

def joke_nerdy_catergorie

  jokeslist

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