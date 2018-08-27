#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

 my_songs = {
 "Go Go GO" => '/home/SaidShah/jukebox-cli-dumbo-web-100818/jukebox-cli/audio/Emerald-Park/01.mp3',
 "LiberTeens" => '/home/SaidShah/jukebox-cli-dumbo-web-100818/jukebox-cli/audio/Emerald-Park/02.mp3',
 "Hamburg" =>  '/home/SaidShah/jukebox-cli-dumbo-web-100818/jukebox-cli/audio/Emerald-Park/03.mp3',
 "Guiding Light" => '/home/SaidShah/jukebox-cli-dumbo-web-100818/jukebox-cli/audio/Emerald-Park/04.mp3',
 "Wolf" => '/home/SaidShah/jukebox-cli-dumbo-web-100818/jukebox-cli/audio/Emerald-Park/05.mp3',
 "Blue" => '/home/SaidShah/jukebox-cli-dumbo-web-100818/jukebox-cli/audio/Emerald-Park/06.mp3',
 "Graduation Failed" => '/home/SaidShah/jukebox-cli-dumbo-web-100818/jukebox-cli/audio/Emerald-Park/07.mp3'
 }

def help
  #this method should be the same as in jukebox.rb
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
  
end



def list(my_songs)
  song_names = my_songs.keys
  song_names.each_with_index do |names,indexes|
    puts "#{indexes+1}. #{names}"
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
  song_names = my_songs.keys
  puts "Please enter a song name:"
  user_input = gets.chomp
  song_names.each do |songs_avail|
  
  if user_input == songs_avail
    system "open #{my_songs[user_input]}"
   
  else 
    puts "Invalid input"
   
  end
 end
end

def exit_jukebox
  #this method is the same as in jukebox.rb
    puts "Goodbye"
end

def run(my_songs)
  #this method is the same as in jukebox.rb
end
