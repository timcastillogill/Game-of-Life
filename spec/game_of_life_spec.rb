require 'game_of_life'

describe 'GameOfLife' do
  
  describe '#board' do

    context 'when I start the game' do
      context 'when I do not pass any coordinates' do
        it 'returns an empty board' do
          game = GameOfLife.new
          expect(game.board).to eq [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]] 
        end
      end

      context 'when I pass it some coordinates' do
        it 'returns a board with live cells' do
          expect(GameOfLife.new).to eq [['x', nil, nil], ['x', nil, nil], ['x', nil, nil]] 
        end
      end
    end

    context ''
  end

end