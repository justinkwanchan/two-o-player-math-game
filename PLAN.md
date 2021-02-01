## Classes

### Game
* The game will hold as instance variables:
  * player_1_turn (boolean)
* The game will hold as instance methods:
  * initiate_turn()

### Player
* The player will hold as instance variables:
  * name (string)
  * score (number)
* The player will hold as instance methods:
  * getter for name
  * getter for score
  * setter for score

### Turn
* The turn will hold as instance variables:
  * question (string)
  * addend1 (number)
  * addend2 (number)
* The turn will hold as instance methods:
  * generate_question() which will create a new math equation string to be output
  * answer(sum) - user I/O - which will wait for user input and compare it with the argument sum then output a feedback message and set the player's score
  * score_output(score1, score2) which will output the score after each round
  * end_game(score1, score2) which outputs a message detailing who won the game