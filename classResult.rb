class Result

  def initialize(correctness)
    @correctness = correctness
  end

  def response
    if @correctness == true
      "YES! You are correct."
    else
      "Seriously? No!"
    end
  end

end