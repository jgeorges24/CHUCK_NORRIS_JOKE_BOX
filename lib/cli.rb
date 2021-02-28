


class CLI

  def initialize
     Chuck_Joke.all
    
    #//commented out because we went a level deeper by not automatically calling it here we will explicity call it depending on the user choice
  end 

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
        #sleep(1)
        puts " ^_^ Hey welcome to the spot, Whats your name? o_0 "
        #sleep(1)
        puts " "
      end

      def greeting(name)
        puts " "
        #selection = user_input
        puts "Welcome #{name} !, please don't mind my mom in the back!"
        puts " "
        #sleep(1)
        puts "I got some good Chuck Norris jokes for you..."
        puts " "
        #sleep(1)
        puts "So do you want to hear some jokes?"
      end

      def menu
        #code for the menu goes here...
          puts "Please type yes or no?"
          puts " "
          selection = user_input.downcase # <--- .downcase for error precautions
         #AFTER USER INPUT This happens below <----
      
        if selection == "yes"
          #sleep(1)
          puts " "
          puts "okay, wanna hear some nerdy or explicit jokes?"
          puts " "
          # pick_genre -> Nerdy or Explicit
          choice = user_input.downcase # THIS IS THE CATAGORY CHOICE "nerdy" or "explicit"---> 
            if choice == "nerdy"
              puts" "
              #sleep(1)
              puts "GROOVY!, so you must be smart, check out these NERDY JOKES!"
              #sleep(1)
              nerd_joke
              puts" "  
              
              after_nerdy_jokes_given
              puts" "  
              #goodbye
            elsif
              choice == "explicit"
                puts" "
                puts "FAIR WARNING!, don't piss yourself, have you heard of these"
                #sleep(1)
                explicit_joke
                #binding.pry
                #jokeslist
                #@explicit_jokes
                #jokeslist_with_index
                puts" "
                puts "wanna hear some more jokes?"
                menu
                puts" "

            else      # ----> used as an error corrector if user types something other than nerdy or explicit
              choice != "nerdy" || "explicit"
              #sleep(1)
              puts" "
              invalid_command
              puts" "
              menu
            end
              #jokeslist_with_index

        elsif selection == "no"
          #this happens...
          puts " "
          goodbye
          puts " "
        else selection != "yes" || "no"
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

      def shuffled_jokes

        puts Chuck_Joke.all.shuffle()
      end

      # def grabbed_all_jokes(new_user_input)
      #   puts "type yes to see all or exit to exit app"
      #   if input == "yes"
      #     puts self.all
      #   elsif input == "exit"
      #     goodbye
      #   else 
      #     menu
      #   end
      # end

      #API CALLs for nerdy jokes used the @ symbole to make instance varibale 
      def nerd_joke
        @nerdy_jokes = API.new.get_jokes_by_genre("nerdy")
        jokeslist_with_index
      end
      #API CALLs for explicit jokes used the @ symbole to make instance varibale 
      def explicit_joke
        @explicit_jokes = API.new.get_jokes_by_genre("explicit")
        jokeslist_with_index
      end

      def single_joke
        Chuck_Joke.one_joke
      end

      def explicit_chuck
        Chuck_Joke.all.each do |jokie|
          puts "#{jokie.joke}"
        end

      end

      # ///IF USER SAYS NO
      def goodbye
        puts " ^_^ REMEMBER TO KEEP SMILING! ^_^ "
        puts " "
        #sleep(1)
        puts "ENDING: <--- CHUCK NORRIS JOKE BOX ---> "
        #sleep(1)
        exit
      end
      
      #<<< if invalid comman ---> with yes or no .side not used menu method in  this method!!!
      def invalid_command 
        puts "HOW DARE YOU!? this is a yes or no question."
        #sleep(1)
        puts "nothing else suckerr..."
        menu
      end

      # USER_INPUT ---->
      def user_input
          @input = gets.chomp
           if @input == "exit"
             goodbye
             puts ""
             exit
           end
           @input
      end
      
      def after_nerdy_jokes_given 
        puts " "
        puts "Wanna hear some more jokes? type yes or no."
        puts " "
        nuser_answer = user_input.downcase
        puts " "
        if nuser_answer == "yes"
          puts "okay, nerdy or explicit jokes?"
          puts " "
          nuser_response = user_input.downcase
          if nuser_response == "nerdy"  
            Chuck_Joke.joke
            after_nerdy_jokes_given
          elsif nuser_response == "explicit"
            explicit_joke
            after_explicit_jokes_given 
          #binding.pry
          else nuser_response != "nerdy" || "explicit"
            invalid_command
          end
          elsif nuser_answer == "no"
          closing_statment
          goodbye
          
          end
         
        #else #nuser_answer != "yes" || "no"
          invalid_command
          
        end 
        
        def touch_joke(inputs)

          joke_obj = Chuck_Joke.all[inputs.to_i-1]
            puts "#{joke_obj.joke}"
        end


       
        

        def after_explicit_jokes_given 
          puts " "
          puts "Wanna hear some more jokes? type yes or no."
          puts " "
          user_answers = user_input.downcase
          puts " "
          if user_answers == "yes"
            puts "okay, nerdy or explicit jokes?"
            puts " "
            user_response = user_input.downcase
            if user_response == "nerdy"  
              nerdy_jokes
              
              after_nerdy_jokes_given
            elsif user_response == "explicit"
              #single_joke
              #explicit_chuck
              explicit_joke
              after_explicit_jokes_given
            end
            #binding.pry
          elsif user_answers == "no"
            closing_statment
            goodbye
          else user_answers != "no" || "yes"
            invalid_command
          end 
          after_explicit_jokes_given
        
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

        #sleep(1)
        puts "ooops!..."
        #sleep(1)
        puts "Try it again!"
        #sleep(1)
        puts " 0_o please type nerdy or explicit"
        #sleep(1)
        puts "So do you want to hear some jokes, yes or no?"
      end

end

