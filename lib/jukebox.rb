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

def list(given_array)

  given_array.each_with_index do |name, index|
    puts "#{index+1}. #{name}"
end

end


def play(given_array)

  puts "Please enter a song name or number:"
  user_input= gets.chomp
  
  given_array.each_with_index do |song_names, index_num|
    
    if user_input.to_i == (index_num+1) || user_input == song_names
      
      puts "Playing #{song_names}"
      break
    else 
      puts "Invalid input, please try again"
      break
  end
  
end
 
end

def exit_jukebox
  puts "Goodbye"
end


def run 
  
  help()
  user_input = gets.chomp
  while user_input != "exit" do
  
  loop do
    case user_input
    
    when "list"
      list
    when "play"
      play
      when "help"
      help
    end
  end
  
  exit_jukebox
  
end
  
  
end































































