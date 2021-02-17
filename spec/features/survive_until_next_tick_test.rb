require 'game_of_life'
require 'spec_helper'

describe 'Surviving', type: :feature do
  scenario 'Any live cell with 2 live neighbours survives until next tick.' do
    pending

    given_i_have_a_cell_with_two_neighbours
    when_i_advance_to_the_next_tick
    then_my_original_live_cell_survives
  end

  scenario 'Any live cell with 3 live neighbours survives until next tick.' do
    pending

    given_i_have_a_cell_with_three_neighbours
    when_i_advance_to_the_next_tick
    then_my_original_live_cell_survives
  end

  private

  def given_i_have_a_cell_with_two_neighbours
    @original_cell_coordinates = [0, 0]

    coordinates = [@original_cell_coordinates, [0, 1], [1, 0]]
    @game = GameOfLife.new(coordinates)
  end

  def given_i_have_a_cell_with_three_neighbours
    @original_cell_coordinates = [1, 1]

    coordinates = [@original_cell_coordinates, [0, 1], [1, 0], [1, 2]]
    @game = GameOfLife.new(coordinates)
  end

  def when_i_advance_to_the_next_tick
    @game.advance_to_next_tick
  end

  def then_my_original_live_cell_survives
    x_coordinate = @original_cell_coordinates.first
    y_coordinate = @original_cell_coordinates.last

    expect(@game.board[x_coordinate][y_coordinate]).to eq('x')
  end
end

