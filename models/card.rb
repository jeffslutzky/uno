class Card

  attr_accessor :number, :color

  def initialize(number, color)
    @number = number
    @color = color
    @@deck << self
  end

  @@deck = []

  def self.deck
    @@deck
  end

  def self.shuffle
    self.deck.shuffle!
  end

end