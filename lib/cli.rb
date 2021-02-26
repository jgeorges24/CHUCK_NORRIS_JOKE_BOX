


class CLI

  def initialize

     # API.new.get_chuck_jokes
  end

      #  <<<<<____------ THIS IS WHERE WE RUN _____----------->>>>
      def run
        title_Intro
        sleep(1)
        puts " ^_^ Hey welcome to the spot, Whats your name? *_* "
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
        puts " "
        #selection = user_input
        puts "Welcome #{name}, please don't mind my mom in the back!"
        sleep(1)
        puts "I got some good Chuck Norris jokes for you..."
        sleep(2)
        puts "So do you want to hear some jokes or nah? yes or no?"
      end

      def menu
        #code for the menu goes here...
        selection = user_input
         #AFTER USER INPUT This happens below <----
        if selection == "yes"
          puts "okay, wanna hear some nerdy or explicit jokes?"
          # pick_genre -> Nerdy or Explicit
            if selection == "nerdy"
              puts "GROOVY!, so you must be smart, check out these NERDY JOKES!"
              API.new.get_jokes_by_genre("nerdy")
            else
              selection == "explicit"
              puts "FAIR WARNING!, don't piss yourself, have you heard of these"
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
        puts "ENDING: <--- CHUCK NORRIS JOKE BOX ---> stop bye for some more fun..."
        sleep(1)
        exit
      end

      def invalid_command #<<< if invalid comman ---> side not used menu method in  this method!!!
        puts "HOW DARE YOU!? please type yes or no"
        sleep(1)
        puts "nothing else suckerr..."
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

      def title_Intro
        puts ""
        puts "---------->>>> CHUCK NORRIS NERDY || EXPLICIT JOKE BOX <<<<---------"
        puts ""
      end



end