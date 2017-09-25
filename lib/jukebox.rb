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

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play "
  puts "- exit : exits this program"
end

def list(songs)
  i=0
  songs.each {|song| puts "#{i+=1}\. #{song}"}
end

def play(songs)
song=nil
  until song
    puts "Please enter a command:"
    input = gets.chomp
   if (1...10) === input.to_i
     song = songs[(input.to_i)-1]
   elsif songs.include?(input)
     song = input
   end
 end
 puts song

end


play(songs)
