# * The turn will hold as instance variables:
#   * question (string)
#   * addend1 (number)
#   * addend2 (number)
# * The turn will hold as instance methods:
#   * generate_question() which will create a new math equation string to be output
#   * answer(sum) - user I/O - which will wait for user input and compare it with the argument sum then output a feedback message and set the player's score
#   * score_output(score1, score2) which will output the score after each round
#   * end_game(score1, score2) which outputs a message detailing who won the game

class Turn
  attr_accessor :question
  def initialize(player_1_turn)
    @player_1_turn = player_1_turn
    @question = ""
    @addend1 = rand(1...20)
    @addend2 = rand(1...20)
  end

  def generate_question
    self.question = "#{@player_1_turn ? "Player 1" : "Player 2"}: What does #{@addend1} plus #{@addend2} equal?"
  end

  def answer(sum)

  end

  def score_output(score1, score2)

  end

  def end_game(score1, score2)

  end
end