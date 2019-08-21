require "card"
require "rspec"

describe Card do
  subject(:card) { Card.new("Spade", "9") }

  describe "#initialize" do
    it "should have a suit and symbol" do
      expect(card.suit).to eq("Spade")
      expect(card.symbol).to eq("9")
    end

  end

  describe "#to_s" do 
    it "should display the symbol" do 
      expect(card.to_s).to eq("9")
    end
  end

  describe "#get_value" do 
    card2 = Card.new("Heart", "K")
    it "should return the number" do 
      expect(card.get_value).to eq(9)
      expect(card2.get_value).to eq(13)
    end 

  end

end
