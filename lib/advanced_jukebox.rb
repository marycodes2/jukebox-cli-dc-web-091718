#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
"Go Go GO" => '/home/marycodes2/jukebox-cli-dc-web-091718/audio/Emerald-Park/01.mp3',
"LiberTeens" => '/home/marycodes2/jukebox-cli-dc-web-091718/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '< /home/marycodes2/jukebox-cli-dc-web-091718/audio/Emerald-Park/03.mp3',
"Guiding Light" => '/home/marycodes2/jukebox-cli-dc-web-091718/audio/Emerald-Park/04.mp3',
"Wolf" => '/home/marycodes2/jukebox-cli-dc-web-091718/audio/Emerald-Park/05.mp3',
"Blue" => '/home/marycodes2/jukebox-cli-dc-web-091718/jukebox-cli/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '/home/marycodes2/jukebox-cli-dc-web-091718/audio/Emerald-Park/07.mp3'
}

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end



def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and 
  #list the songs by name
  song_names = my_songs.keys
  song_names.each_with_index do |song, index|
    correct_index = index + 1
    puts "#{correct_index}. #{song}"
  end
end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  puts "Please enter a song name or number:"
  user_choice = gets.chomp
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
