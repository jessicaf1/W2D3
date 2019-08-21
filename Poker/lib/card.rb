# reqire --- comporable module ModuleName
  
# end

class Card

  attr_reader :suit, :symbol

  def initialize(suit, symbol)
    @suit = suit
    @symbol = symbol
  end

  def to_s
    symbol 
  end 

  def get_value
    card_values = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]
    card_values.index(self.symbol) + 2 
  end 


end
