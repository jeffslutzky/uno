
require_relative '../models/card.rb'
require_relative '../models/deck.rb'
require_relative '../models/person.rb'

Deck.new
Person.game_deck = Card.deck.shuffle
Person.last_card_played = Person.game_deck.pop


puts "Let's play Uno!"
puts "There will be two players."
puts "Enter the name of the first player."
name = gets.chomp
player_1 = Person.new(name)
puts "Hello, #{player_1.name}!", ""
puts "Enter the name of the second player."
name = gets.chomp
player_2 = Person.new(name)
puts "Hello, #{player_2.name}!", ""

def still_playing(player_1, player_2)
	player_1.hand.length != 0 || player_2.hand.length != 0
end

x = true

while x
	player_1.play
	if still_playing(player_1, player_2)
		player_2.play
	else
		x = false
	end

end

puts "Game over!"