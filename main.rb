require "./game.rb"
require "./player.rb"
require "./turn.rb"

game = Game.new

game.initiate_turn
game.initiate_turn
game.initiate_turn
game.initiate_turn
game.initiate_turn
game.initiate_turn
puts game.turn_arr.inspect