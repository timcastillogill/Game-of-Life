require 'game_of_life'

describe 'Surviving' do

  scenario 'Any live cell with 2 live neighbours survives until next tick.' do
    pending
    given_i_have_a_cell_with_two_neighbours
    when_i_advance_to_the_next_tick
    then_my_cells_survive
  end

  scenario 'Any live cell with 3 live neighbours survives until next tick.' do
    pending
    given_i_have_a_cell_with_three_neighbours
    when_i_advance_to_the_next_tick
    then_my_cells_survive
  end

  private

  def given_i_have_a_cell_with_two_neighbours
    coordinates = [
      [0, 0], 
      [0, 1], 
      [1, 0], 
    ]
    @game = GameOfLife.new(coordinates)
  end

  def given_i_have_a_cell_with_three_neighbours
    coordinates = [
      [1, 1], 
      [0, 1], 
      [1, 0],
      [1, 2],
    ]
    @game = GameOfLife.new(coordinates)
  end

  def when_i_advance_to_the_next_tick
    binding.pry
  end

  def then_my_cells_survive

  end

end

