require 'pry'

class Person

  attr_accessor :hand

  @@game_deck = []

  @@last_card_played = nil

  def initialize
    @hand = []
    7.times do
      draw_card
    end
  end

  def self.game_deck
    @@game_deck
  end

  def self.game_deck=(deck)
    @@game_deck = deck
  end

  def draw_card
    drawn_card = @@game_deck.pop
    @hand << drawn_card
  end

  def display_hand
    @hand.each_with_index do |card, index|
      puts "(#{index+1}) --> #{card.to_s}"
    end
      puts "Type the number of the card you want to play, or 'skip' to draw a card and skip your turn."  
  end

  def is_valid?(card_played)
    @@last_card_played.color == card_played.color || @@last_card_played.number == card_played.number
  end

  def play
    puts "Last card played = #{@@last_card_played}"
    display_hand
    # choice = gets.chomp
    # if choice == skip
      # draw_a_card
    # elsif choice_is_valid(choice)
      # change last_card_played to choice
      # pop card from @hand
    # else (choice is not valid)
      # play (loop back to beginning of method)
  end

end