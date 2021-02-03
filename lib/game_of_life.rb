# live cell = "x"
# dead cell = nil

# [
#   [x,x,x], 
#   [x,x,x], 
#   [x,x,x]
# ]

class GameOfLife

  attr_reader :board

  def initialize
    @board = Array.new(3) {Array.new(3)}
  end


end

