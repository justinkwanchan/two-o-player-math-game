class Turn
  attr_reader :player, :addend1, :addend2
  
  def initialize(player_1_turn)
    @player = player_1_turn ? "Player 1" : "Player 2"
    @addend1 = rand(1...20)
    @addend2 = rand(1...20)
  end

  def answer()
    puts "#{self.player}: What does #{self.addend1} plus #{self.addend2} equal?"
    
    answer = gets.chomp.to_i

    if answer == addend1 + addend2
      puts "#{self.player}: YES! You are correct"
      true
    else
      puts "#{self.player}: Seriously? No!"
      false
    end
  end

  def score_output(score1, score2)
    puts "P1: #{score1}/3 vs P2: #{score2}/3"
  end
end