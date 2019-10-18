require './lib/game'

puts 'Welcome to MASTERMIND'
puts 'Would you like to (p)lay, read the (i)nstructions, or (q)uit?'
print '> '

input = gets.chomp.downcase

if input == 'p' || input == 'play'
  game = Game.new
  game.intro
elsif input == 'i' || input == 'instructions'
  puts 'Instructions'
elsif input == 'q' || input == 'quit'
  puts 'Exiting game...'
end
