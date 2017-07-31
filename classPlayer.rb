class Player

  attr_reader:name
  attr_accessor:lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def loseLife
    @lives -= 1
  end

  def gameOver
    "#{@name} wins!\n----- GAME OVER -----\nGood Bye!"
  end

end