* The player will hold as instance variables:
  * name (string)
  * score (number)
* The player will hold as instance methods:
  * getter for name
  * getter for score
  * setter for score

  class Player
    attr_reader :name
    attr_accessor :score

    def initialize(name)
      @name = name
      @score = 3
    end
  end