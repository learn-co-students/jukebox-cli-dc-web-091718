require 'pry'

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

#def say_hello(name)
#   "Hi #{name}!"
#end

#puts "Enter your name:"
#users_name = gets.chomp

#puts say_hello(users_name)

def help
  puts "I accept the following commands:
  - help: displays this help message
  - list: displays a list of songs you can play
  - play: lets you choose a song to play
  - exit: exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  user_answer = gets.chomp
    songs.each_with_index do |song, index|
      if user_answer == song || user_answer == "#{index + 1}"
        puts "Playing #{song}"
      else
        puts "Invalid input, please try again."
      end
    end
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  first_response = gets.chomp
  user_answer = ''
  while user_answer != "exit"
    user_answer = gets.chomp
      if first_response == "list" || user_answer == "list"
        list(songs)
        puts "What would you like to do?"
        user_answer
      elsif first_response == "play" || user_answer == "play"
        play(songs)
        puts "What else would you like to do?"
        user_answer
      elsif first_response == "help" || user_answer == "help"
        help
        puts "What else would you like to do?"
        user_answer
      end
    end
  if user_answer == "exit" || first_response == "exit"
        exit_jukebox
  end
end



