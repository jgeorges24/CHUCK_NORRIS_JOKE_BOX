 module Jokesxx
     module InstanceMethods
    
    #instance methods can be added here to be accessed everywhere
    
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
 
 #<<< if invalid comman ---> side not used menu method in  this method!!!
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