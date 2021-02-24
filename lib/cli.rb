

class CLI

    
 puts "this is cli file"
      def run
            greeting
            greeting2
            user_input
            API.new.get_chuck_jokes
            Chuck_Jokes.new.(jokes_data)
      end

      def greeting 
        puts "Welcome to my sancuary of The Great Chuck Norris!"
      end

      def greeting2
        puts "so this is where the magic happens, remember Chuck Norris is god in theses streets"
      end

      def user_input
        user_reply = gets.chomp
        #more code if else statement...
      end

end