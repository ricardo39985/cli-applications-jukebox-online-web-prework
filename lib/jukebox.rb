# Add your code here
def help
  puts "I accept the following commands:"
  commands = ["- help : displays this help message", "- list : displays a list of songs you can play",
  "- play : lets you choose a song to play", "- exit : exits this program"]
  commands.each {|c| puts c}
end

def play(songs_array)
  puts "Please enter a song name or number:"
  user_input = gets.strip
  pp user_input
  if songs_array.include? user_input
    puts "Playing #{user_input}"
  elsif user_input.to_i>=1 and user_input.to_i < songs_array.length
    puts "#{songs_array[user_input.to_i-1]}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs_array)
  songs_array.each_with_index {|item, index| puts " #{index + 1}. #{item}"}
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  user_i = gets.strip
  while user_i != "exit"
    if user_i == "play"
      play(songs)
    elsif user_i == "list"
      list(songs)
    else
      help
    end
    user_i = gets.strip
  end
  exit_jukebox
end
#
# def run(songs)
#   puts "Please enter a command:"
#   user_i = gets.strip
#   while user_i != "exit"
#     if user_i == "play"
#       play(songs)
#     elsif user_i == "list"
#       list(songs)
#     else
#       help
#     end
#     user_i = gets.strip
#   end
#   exit_jukebox
# end
