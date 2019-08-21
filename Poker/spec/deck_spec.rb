require "deck"
require "rspec"

describe "Deck" do 

  subject(:deck) { Deck.new }

  describe "initialize" do
    it "should have 52 cards" do
      expect(deck.count).to be(52)
      # expect(deck).to be_a(Array)
    end
  end

  # describe ""
end
