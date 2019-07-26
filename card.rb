class Card
  attr_accessor :rank, :suit
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def output_card
    puts "#{self.rank} of #{self.suit}"
  end

  def self.random_card
    Card.new(rand(10), :spades)
  end
end

class Deck
  def initialize
    @cards =[]
    @cards << Card.new(10, :spades)
    @cards << Card.new(9, :diamonds)
  end

  def shuffle
    @cards.shuffle!
  end

  def output
    @cards.each do |card|
      card.output_card
  end
end

deck= Deck.new
deck.shuffle
deck.output
card = Card.random_card
card.output_card
end