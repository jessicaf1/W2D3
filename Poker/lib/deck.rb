require_relative "card"
class Deck

  def initialize 
    @deck = populate 
  end

  def populate
    arr = []
    52.times do |i|
      if i.between?(0,12)
      arr << Card.new("Spade", i)
      elsif i.between?(13,25)
      arr << Card.new("Heart", i)
      end 
    end

    arr
  end


end

p d = Deck.new 