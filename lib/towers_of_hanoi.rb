# require "byebug"

class TowersOfHanoi

  attr_reader :towers
  def initialize
    @towers = [[3, 2, 1], [], []]
  end

  def play
    render

    until won?
      start_tower, end_tower = play_move
      move(start_tower, end_tower)

      render
    end

    puts "You won!"
  end

  def play_move
    print "Enter the tower to move from: "
    start_tower = gets.chomp.to_i
    print "Enter the tower to move to: "
    end_tower = gets.chomp.to_i

    [start_tower, end_tower]
  end

  def move(start_tower, end_tower)
    if valid_move?([start_tower, end_tower])
      disc = @towers[start_tower].pop
      @towers[end_tower] << disc
    end
  end

  def valid_move?(arr)
    if arr.is_a?(Array)
      start_tower, end_tower = arr

      return false if towers[start_tower].empty?
      return true if towers[end_tower].empty?
      # debugger
      towers[start_tower].last < towers[end_tower].last
    else
      false
    end
  end

  def render
    p towers
  end

  def won?
    towers.last.size == 3
  end
end

if __FILE__ == $PROGRAM_NAME
  toh = TowersOfHanoi.new
  toh.play
end
