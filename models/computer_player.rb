cd ..require 'pry'
class Computer < Person

  attr_accessor :person

  def initialize(person)
    @person = person
    @hand = []
    7.times do
      draw_card
    end
  end

  def draw_card
    drawn_card = person.class.game_deck.pop
    @hand << drawn_card
  end

  def play
    puts "Last card played: #{person.class.last_card_played}"
    puts "It's the computer's turn!"

    possibilities = @hand.find_all do |card|
      card.number == person.class.last_card_played.number || card.color == person.class.last_card_played.color
    end

    if possibilities.length > 0 
      card = possibilities[rand(0..(possibilities.length-1))]
      person.class.last_card_played = card
      @hand.delete(card)
      puts "The computer played #{card}"
    else
      puts "The computer had to draw a card and skip their turn."
      draw_card
    end

    puts "The computer has #{@hand.length} cards left!"
  end



end