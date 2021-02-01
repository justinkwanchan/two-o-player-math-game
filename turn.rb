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
  attr_reader :player, :addend1, :addend2
  def initialize(player_1_turn)
    @player = player_1_turn ? "Player 1" : "Player 2"
    @addend1 = rand(1...20)
    @addend2 = rand(1...20)
  end

  def generate_question
    "#{self.player}: What does #{self.addend1} plus #{self.addend2} equal?"
  end

  def answer()
    puts generate_question
    
    answer = gets.chomp.to_i

    if answer == (addend1 + addend2)
      puts "#{self.player}: YES! You are correct"
      true
    else
      puts "#{self.player}: Seriously? No!"
      false
    end
  end

  def score_output(score1, score2)

  end

  def end_game(score1, score2)

  end
end