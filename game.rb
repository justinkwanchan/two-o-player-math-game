class Game
  attr_accessor :player_1_turn, :player_scores, :turn_arr

  def initialize
    @player_1_turn = true
    @player_scores = [3, 3]
    @turn_arr = []
  end

  def initiate_turn
    turn_arr << Turn.new(@player_1_turn)
    correct = turn_arr[turn_arr.length() - 1].answer

    if !correct
      @player_scores[self.player_1_turn ? 0 : 1] -= 1
    end
    self.player_1_turn = self.player_1_turn ? false : true
  end
end