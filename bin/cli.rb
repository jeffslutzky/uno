require 'pry'

require 'colored'
require_relative '../models/card.rb'
require_relative '../models/deck.rb'
require_relative '../models/person.rb'
require_relative '../models/computer_player.rb'
require_relative '../controllers/persons/person_controller.rb'
require_relative '../controllers/computer/computer_controller.rb'

Deck.new
Person.game_deck = Card.deck.shuffle
Person.last_card_played = Person.game_deck.pop


puts "Let's play Uno!"
puts "You will play against the computer."
puts "Enter your name:"
name = gets.chomp
player_1 = Person.new(name)
puts "Hello, #{player_1.name}!", ""
computer = Computer.new(player_1)

def still_playing(player_1, computer)
  player_1.hand.length != 0 && computer.hand.length != 0
end

while still_playing(player_1, computer)
  controller = PersonController.new
  controller.play(player_1) # player_1.play
  if still_playing(player_1, computer)
    controller = ComputerController.new
    controller.play(computer)
  end
end

if player_1.hand.length == 0
  puts "#{player_1.name} is out of cards and wins the game!"
else
  puts "The computer is out of cards and wins the game!"
end