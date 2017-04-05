require 'rspec'
require 'towers_of_hanoi'

describe TowersOfHanoi do
  subject(:TowersOfHanoi) { TowersOfHanoi.new }

  describe "#initialize" do
    it "initialize a towers array" 
  end

  describe "#play" do
    it "call #render"
    it "call #won?"

  end

  describe "#move" do
    it "call gets"
    it "update the towers array"
    it "checks if a move is legal"
  end

  describe "#won?" do
    it "returns true if game is won"
    it "return false if game is not won yet"
  end

  describe "#render" do
    it "prints towers"
  end

end
