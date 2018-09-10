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

def help

  help = "help : displays this help messages"
  list = "list : displays a list of songs you can play"
  play = "play : lets you choose a song to play"
  ext = "exit : exits this program"

  puts "I accept the following commands:"
  puts help
  puts list
  puts play
  puts ext

end

def list(songs)
  
  songs.each_with_index do |obj, i|
    place = i + 1
    puts "#{place}. #{obj}"
  end
  
end

def play(songs)
  
  puts "Please enter a song name or number:"
  user_response = gets.chomp
  
  song = ""
  
  songs.each_with_index do |obj, i|
    if user_response.to_i == (i + 1)
      song = obj
    elsif user_response == obj
      song = obj
    end
  end
  
  if song.length > 0
    puts "Playing #{song}"
  else
    puts "Invalid input, please try again"
  end
      
end

def exit_jukebox
   puts "Goodbye"
end

def run(songs)
  
  help
  loop do 
    puts "Please enter a command:"
    user_input = gets.chomp
    
    case user_input
      when "list"
        list(songs)
      when "play"
        play(songs)
      when "help"
        help
    end
    
    break if user_input == "exit"
  end
  
  exit_jukebox

end




