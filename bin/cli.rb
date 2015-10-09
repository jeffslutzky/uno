
require_relative 'deck.rb'
require_relative 'models/card.rb'
require_relative 'models/person.rb'

Deck.new
Person.game_deck = Card.deck.shuffle # sets the game deck to the deck of cards

# Start a new game?
# if yes, generate deck of cards

