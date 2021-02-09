require 'game_of_life'
require 'pry'

describe GameOfLife do
  subject(:game_of_life) { described_class.new(coordinates) }
  describe '#board' do
    context 'when I start the game' do
      context 'when I do not pass any coordinates' do
        let(:coordinates) { [] }
        it 'returns an empty board' do
          binding.pry
          expect(game_of_life.board).to eq [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]] 
        end
      end
      
      context 'when I pass it some coordinates' do
        let(:coordinates) { [[0, 0], [1, 0], [2, 0], [2, 2]] }
        it 'returns a board with live cells' do
          expect(game_of_life.board).to eq(
            [
              ['x', nil, nil],
              ['x', nil, nil],
              ['x', nil, 'x']
            ]
          )
        end
      end
    end
  end
end