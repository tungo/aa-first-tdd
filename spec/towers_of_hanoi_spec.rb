require 'rspec'
require 'towers_of_hanoi'

describe TowersOfHanoi do
  subject(:towers_of_hanoi) { TowersOfHanoi.new }

  describe "#initialize" do
    it "initialize a towers array" do
      expect(towers_of_hanoi.towers).to eq([[3, 2, 1], [], []])
    end
  end

  describe "#play" do
    it "call #render" do
      expect(towers_of_hanoi).to receive(:render)
      towers_of_hanoi.play
    end

    it "call #won?" do
      expect(towers_of_hanoi).to receive(:won?)
      towers_of_hanoi.play
    end

  end

  describe "#play_move" do
    it "call gets"
  end

  describe "#move" do
    it "update the towers array" do
      towers_of_hanoi.move(0, 2)
      expect(towers_of_hanoi.towers).to eq([[3, 2], [], [1]])
    end

    it "doesn't move larger disc over smaller disc" do
      towers_of_hanoi.move(0, 2)
      towers_of_hanoi.move(0, 2)
      expect(towers_of_hanoi.towers).to eq([[3, 2], [], [1]])
    end

    it "doesn't move empty towers" do
      towers_of_hanoi.move(1, 2)
      expect(towers_of_hanoi.towers).to eq([[3, 2, 1], [], []])
    end
  end

  describe "#won?" do
    it "returns true if game is won"
    it "return false if game is not won yet"
  end

  describe "#render" do
    it "prints towers"
  end

end
