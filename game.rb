class Game
  attr_accessor :player_1_turn, :turns, :player_1, :player_2, :turn_arr

  def initialize
    @player_1_turn = true
    @player_1 = Player.new("Player 1")
    @player_2 = Player.new("Player 2")
    @turn_arr = []
  end

  def initiate_turn
    turn_arr << Turn.new(@player_1_turn)
    turn_arr[turn_arr.length() - 1].generate_question
    self.player_1_turn = self.player_1_turn ? false : true
  end
end