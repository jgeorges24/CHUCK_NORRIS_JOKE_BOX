

class CLI

    
 puts "this is cli file"
      def run
        greeting
        user_input
        API.new.get_chuck_jokes
        display
        # Chuck_Jokes.new.(jokes_data)
      end

      def greeting 
        puts "Welcome to my sancuary of The Great Chuck Norris!"
        sleep(2)
        puts "so this is where the magic happens, remember Chuck Norris is god in theses streets"
    end
        def display

            Chuck_Jokes.new.(jokes_data)
        end

      def user_input
        reply = gets.chomp
        #more code if else statement...
      end

end