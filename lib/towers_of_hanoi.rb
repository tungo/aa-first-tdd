# require "byebug"

class TowersOfHanoi

  attr_reader :towers
  def initialize
    @towers = [[3, 2, 1], [], []]
  end

  def play
    render
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
  end

  def won?

  end
end
#
# if __FILE__ == $PROGRAM_NAME
#   toh = TowersOfHanoi.new
#   p toh.move(0, 2)
#   p toh
# end
