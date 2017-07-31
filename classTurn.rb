class Turn

  def initialize(array)
    @playerAry = array
  end

  def newTurn
    "----- NEW TURN -----"
  end

  def changeTurn
    @playerAry.reverse!
  end

end