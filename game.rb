class Game
  attr_accessor :player_1_turn, :player_scores, :turn_arr, :end_game

  def initialize
    @player_1_turn = true
    @player_scores = [3, 3]
    @turn_arr = []
  end

  def initiate_turn
    turn_arr << Turn.new(@player_1_turn)
    turn = turn_arr[turn_arr.length() - 1]
    correct = turn.answer

    if !correct
      @player_scores[self.player_1_turn ? 0 : 1] -= 1
    end
    
    if !@player_scores.include? 0
      turn.score_output(*@player_scores)
      puts "----- NEW TURN -----"
    end

    self.player_1_turn = self.player_1_turn ? false : true
  end

  def end_game(score1, score2)
    if player_1_turn
      puts "Player 1 wins with a score of #{score1}/3"
    else
      puts "Player 2 wins with a score of #{score2}/3"
    end
  end
  
  def play
    begin
      self.initiate_turn
    end while !@player_scores.include? 0

    self.end_game(*@player_scores)
  end
end