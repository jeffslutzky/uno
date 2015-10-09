
require_relative 'deck.rb'
require_relative 'models/card.rb'
require_relative 'models/person.rb'

Deck.new
Person.game_deck = Card.deck.shuffle # sets the game deck to the deck of cards
Person.last_card_played = Person.game_deck.pop


puts "Let's play Uno!"
puts "There will be two players."
puts "Enter the name of the first player."
name = gets.chomp
player_1 = Person.new(name)
puts "Enter the name of the second player."
name = gets.chomp
player_2 = Person.new(name)

still_playing? = true

while still_playing?
	turn = true
	if turn == true
		player_1.play
		turn = false
	else
		player_2.play
		turn = true
	end
	if player_1.hand.length == 0 || player_2.hand.length == 0
		still_playing? = false
	end
end
