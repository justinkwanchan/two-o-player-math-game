class Game
  attr_accessor :player_1_turn
  attr_reader :player_scores

  def initialize
    @player_1_turn = true
    @player_scores = [3, 3]
  end

  def initiate_turn
    turn = Turn.new(@player_1_turn)
    correct = turn.answer

    unless correct
      self.player_scores[self.player_1_turn ? 0 : 1] -= 1
    end
    
    unless self.player_scores.include? 0
      turn.score_output(*self.player_scores)
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

    puts "----- GAME OVER -----"
    puts "Good bye!"
  end
  
  def play
    while not self.player_scores.include? 0
      self.initiate_turn
    end 

    self.end_game(*self.player_scores)
  end
end