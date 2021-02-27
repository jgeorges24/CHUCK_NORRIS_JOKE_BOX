


class CLI

  #def initialize
    # API.new.get_chuck_jokes 
    #//commented out because we went a level deeper by not automatically calling it here we will explicity call it depending on the user choice
  #end 

#  <<<<<____------ THIS IS WHERE Method RUN in CLI comes in _____----------->>>>
      def run
        title_Intro
        user_name_asker
        greeting(user_input)
        menu 
      end

 #<<----------DEFINED METHODS BELOW ----------->>>>

    # TITLE METHOD ---->
    def title_Intro
      puts ""
      puts "----->>> CHUCK NORRIS NERDY || EXPLICIT JOKE BOX <<<-----"
      puts ""
    end

      # ASK USER FOR THEIR NAME
      def user_name_asker
        # sleep(1)
        puts " ^_^ Hey welcome to the spot, Whats your name? o_0 "
        # sleep(1)
        puts " "
      end

      def greeting(name)
        puts " "
        #selection = user_input
        puts "Welcome #{(name).upcase}!, please don't mind my mom in the back!"
        puts " "
        # sleep(1)
        puts "I got some good Chuck Norris jokes for you..."
        puts " "
        # sleep(1)
        puts "So do you want to hear some jokes?"
      end

      def menu
        #code for the menu goes here...
          puts "Please type yes or no?"
          puts " "
          selection = user_input.downcase # <--- .downcase for error precautions
         #AFTER USER INPUT This happens below <----
      
        if selection == "yes"
          # sleep(1)
          puts " "
          puts "okay, wanna hear some nerdy or explicit jokes?"
          puts " "
          # pick_genre -> Nerdy or Explicit
          choice = user_input.downcase # THIS IS THE CATAGORY CHOICE "nerdy" or "explicit"---> 
            if choice == "nerdy"
              puts" "
              # sleep(1)
              puts "GROOVY!, so you must be smart, check out these NERDY JOKES!"
              # sleep(1)
              @nerdy_jokes
              puts" "  
              jokeslist_with_index
              puts" "  
              after_jokes_given
              puts" "  
              closing_statment
            elsif
              choice == "explicit"
                puts" "
                puts "FAIR WARNING!, don't piss yourself, have you heard of these"
                # sleep(1)
                @explicit_jokes
                jokeslist_with_index
                puts" "
                after_jokes_given
                puts" "

            else      # ----> used as an error corrector if user types something other than nerdy or explicit
              choice != "nerdy" || "explicit"
              # sleep(1)
              puts" "
              nerdy_explicit_invlaid
              puts" "
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
      
        # jokes with index list//////
      def jokeslist_with_index
        Chuck_Joke.all.each_with_index do |joke, index|
          puts "#{index + 1}. <-> #{joke.joke}"
          
        end
      end

      #API CALLs for nerdy jokes used the @ symbole to make instance varibale 
      @nerdy_jokes = API.new.get_jokes_by_genre("nerdy")
      #API CALLs for explicit jokes used the @ symbole to make instance varibale 
      @explicit_jokes = API.new.get_jokes_by_genre("explicit")


      # ///IF USER SAYS NO
      def goodbye
        puts " ^_^ REMEMBER TO KEEP SMILING! ^_^ "
        puts " "
        # sleep(1)
        puts "ENDING: <--- CHUCK NORRIS JOKE BOX ---> "
        # sleep(1)
        exit
      end
      
      #<<< if invalid comman ---> with yes or no .side not used menu method in  this method!!!
      def invalid_command 
        puts "HOW DARE YOU!? this is a yes or no question."
        # sleep(1)
        puts "nothing else suckerr..."
        menu
      end

      # USER_INPUT ---->
      def user_input
          user_input = gets.strip 
      end
      
      def after_jokes_given

        puts "Wanna hear some more jokes?"
        puts " "
        menu
        # response = user_input.downcase
        # if response == "yes"
        #   puts "COOL!"
        #   puts " "
        #   puts "wait...a nerdy or explicit joke? "
        #   puts " "
        #   response 
        #   if response == "nerdy"
        #     nerdy_jokes
        #     jokeslist_with_index
        #     after_jokes_given

        #     elsif response == "explicit"
        #       explicit_jokes
        #       jokeslist_with_index
        #       after_jokes_given
            
        #     else 
        #       nerdy_explicit_invlaid
        #     end

        #   elsif response == "no"
        #     goodbye
        #   end

        # else 
        #   puts "Sorry for that, please type yes or no for more jokes..."
        #   after_jokes_given
        #   menu
        # end
      end

      def closing_statment
        puts " "
        puts "            ----- ^_^ -----                "
        puts " "
        puts "       COME BACK FOR MORE JOKES LATER      "
        puts "-------------------------------------------"
        puts " "
        exit
      end

      def nerdy_explicit_invlaid

        # sleep(1)
        puts "ooops!..."
        # sleep(1)
        puts "Try it again!"
        # sleep(1)
        puts " 0_o please type nerdy or explicit"
        # sleep(1)
        puts "So do you want to hear some jokes, yes or no?"
      end
end