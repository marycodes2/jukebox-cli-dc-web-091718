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
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end 

def play(songs)
  puts "Please enter a song name or number:"
  user_choice = gets.chomp
  count = 1 
  song_dict = {}
  songs.each do |song|
    song_dict[count] = song
    count += 1
  end
  song_numbers = song_dict.keys.to_s
  song_names = song_dict.values
  if song_numbers.include? user_choice
    user_choice = user_choice.to_i
    puts "Playing #{song_dict[user_choice]}"
  elsif song_names.include? user_choice
    puts "Playing #{user_choice}"
  else
    puts "Invalid input, please try again"
  end 
end

def list(songs)
  songs.each_with_index do |song, index|
    correct_index = index + 1
    puts "#{correct_index}. #{song}"
  end 
end

def exit_jukebox
  puts "Goodbye"
end 

def run(songs)
  help
  user_response = ""
  until user_response == "exit" do
    puts "Please enter a command:"
    user_response = gets.chomp
      if user_response == 'list'
        list(songs)
      elsif user_response == 'play'
        play(songs)
      elsif user_response == 'help'
        help
      elsif user_response == 'exit'
        exit_jukebox
        break
       else
         break
      end
  end 
end
