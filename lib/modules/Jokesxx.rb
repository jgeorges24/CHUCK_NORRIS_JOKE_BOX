 module Jokesxx
     module InstanceMethods
    
    #instance methods can be added here to be accessed everywhere
    
   #<<----------DEFINED METHODS BELOW ----------->>>>

    # TITLE METHOD ---->
    def title_Intro
      puts ""
      puts "----->>> CHUCK NORRIS NERDY || EXPLICIT JOKE BOX <<<-----"
      puts ""
    end

      def greeting(name)
        puts " "
        #selection = user_input
        puts "Welcome #{(name).upcase}!, please don't mind my mom in the back!"
        puts " "
        sleep(1)
        puts "I got some good Chuck Norris jokes for you..."
        puts " "
        sleep(1)
        puts "So do you want to hear some jokes or nah? yes or no?"
      end

      def menu
        #code for the menu goes here...
        selection = user_input.downcase # <--- .downcase for error precautions
         #AFTER USER INPUT This happens below <----
        if selection == "yes"
          sleep(1)
          puts " "
          puts "okay, wanna hear some nerdy or explicit jokes?"
          puts " "
          # pick_genre -> Nerdy or Explicit
          choice = user_input.downcase # THIS IS THE CATAGORY CHOICE "nerdy" or "explicit"---> 
            if choice == "nerdy"
              puts" "
              sleep(1)
              puts "GROOVY!, so you must be smart, check out these NERDY JOKES!"
              sleep(1)
              API.new.get_jokes_by_genre("nerdy")
              puts" "
              # -----> this calls those nerdy jokes with index  
              jokeslist_with_index 
              closing_statment
            elsif
              choice == "explicit"
              puts" "
                puts "FAIR WARNING!, don't piss yourself, have you heard of these"
                sleep(1)
                API.new.get_jokes_by_genre("explicit")
                jokeslist_with_index
                closing_statment
            else      # ----> used as an error corrector if user types something other than nerdy or explicit
              choice != "nerdy" || "explicit"
              sleep(1)
              nerdy_explicit_invlaid
              menu
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
      
        # jokes without index list//////
      def jokeslist
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

      # ///IF USER SAYS NO
      def goodbye
        puts " ^_^ REMEMBER TO KEEP SMILING! ^_^ "
        puts " "
        sleep(1)
        puts "ENDING: <--- CHUCK NORRIS JOKE BOX ---> "
        sleep(1)
        exit
      end
      
      #<<< if invalid comman ---> with yes or no .side not used menu method in  this method!!!
      def invalid_command 
        puts "HOW DARE YOU!? please type yes or no"
        sleep(1)
        puts "nothing else suckerr..."
        menu
      end

      def display
        #display data goes here.....
        
      end

      # USER_INPUT ---->
      def user_input
          gets.strip
        #more code if else statement...
      end
      
      # ASK USER FOR THEIR NAME
      def user_name_asker
        sleep(1)
        puts " ^_^ Hey welcome to the spot, Whats your name? *_* "
        sleep(1)
        puts " "
      end

      def closing_statment
        puts " "
        puts "            ----- ^_^ -----                "
        puts " "
        puts "       COME BACK FOR MORE JOKES LATER      "
        puts "-------------------------------------------"
      end

      def nerdy_explicit_invlaid

        sleep(1)
        puts "ooops!..."
        sleep(1)
        puts "Try it again!"
        sleep(1)
        puts " 0_o please type nerdy or explicit"
        sleep(1)
        puts "So do you want to hear some jokes, yes or no?"
      end
     end

     module ClassMethods

         class methods can be added here to be accessed everywhere
     end


 end