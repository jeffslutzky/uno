require 'pry'

class Person

  attr_accessor :hand, :name

  @@game_deck = []

  @@last_card_played = nil

  def initialize(name="Computer")
    @name = name
    @hand = []
    7.times do
      draw_card
    end
  end

  def self.last_card_played=(card)
    @@last_card_played = card
  end

  def self.last_card_played
    @@last_card_played
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
    puts "#{@name}, it's your turn! Here's your hand:"
    puts ""
    puts "* * * * * * * * * *"
    @hand.each_with_index do |card, index|
      puts "(#{index+1}) --> #{card.to_s}"
    end 
    puts "* * * * * * * * * *"
    puts ""
  end

  def is_valid?(choice)
    choice = choice.to_i
    card_played = @hand[choice - 1]
    @@last_card_played.color == card_played.color || @@last_card_played.number == card_played.number
  end

  def play
    puts "","Last card played: #{@@last_card_played}", ""
    display_hand
    puts "Type the number of the card you want to play, or 's' to draw a card and skip your turn."
    # puts "Type exit to end the game."  
    choice = gets.chomp
    if choice == "s"
      draw_card
    # elsif choice == "exit"
      #exit
    elsif is_valid?(choice)
      choice = choice.to_i
      @@last_card_played = @hand[choice - 1]
      @hand.delete_at(choice - 1)
    else
      puts "Sorry, that's not a valid play."
      play
    end
  end

end