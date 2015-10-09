require 'pry'

class Person

  attr_accessor :hand

  def initialize
    @hand = []
  end

  def draw
    # adds a card to @hand from remaining cards in Deck
  end

  def display_hand
    @hand.each_with_index do |card, index|
      puts "#{index+1}. #{card.to_s}"
    end
      puts "Type the number of the card you want to play, or 'skip' to draw a card and skip your turn."  
  end

  def is_valid?(card_played)
    # check whether the play is_valid
  end

  def play
    # display_hand
    # puts last_card_played
    # choice = gets.chomp
    # if choice == skip
      # draw
    # elsif choice_is_valid(choice)
      # change last_card_played to choice
      # pop card from @hand
    # else (choice is not valid)
      # play (loop back to beginning of method)
  end

end