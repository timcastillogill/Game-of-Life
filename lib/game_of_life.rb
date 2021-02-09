# live cell = "x"
# dead cell = nil
# [
#   [x,x,x], 
#   [x,x,x], 
#   [x,x,x]
# ]
class GameOfLife
  attr_reader :board
  def initialize(coordinates)
    @board = create_board(coordinates)
  end
  private
  def create_board(coordinates)
    empty_board = Array.new(3) { Array.new(3) }
    coordinates.each do |x, y|
      empty_board[x][y] = 'x'
    end
    empty_board
  end
end