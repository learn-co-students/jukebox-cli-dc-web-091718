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
	puts "I accept the following commands:"
	puts "- help : displays this help message"
	puts "- list : displays a list of songs you can play"
	puts "- play : lets you choose a song to play"
	puts "- exit : exits this program"
end

def list(songs)
	songs.each_with_index do |song, i|
		puts "#{i + 1}. #{song}"
	end
end

def play(songs)
	puts "Please enter a song name or number:"

	song = gets.chomp

	if valid_song?(song, songs)
		puts song
		if song.to_i < 9 && song.to_i > 0
			puts songs[song.to_i - 1]
			song = songs[song.to_i - 1]
		end
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
	loop = true

	while loop 
		puts "Please enter a command:"
		command = gets.chomp

		case command
		when "help"
			help
		when "list"
			list(songs)
		when "play"
			play(songs)
		when "exit"
			exit_jukebox
			loop = false
		else
			puts "Invalid input, please try again"
		end
			
	end

	
end

def valid_song?(song, songs) 
	#song_names = songs.collect{ |track| song.split " - ".last}
	if (song.to_i) < 10 && song.to_i != 0
		return true
	elsif songs.include?(song)
		return true
	end

	false
end



