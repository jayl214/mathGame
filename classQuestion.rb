class Question

  attr_accessor:firstNumber
  attr_accessor:secondNumber
  attr_accessor:answer

  def initialize()
    @firstNumber = rand(10)
    @secondNumber = rand(10)
    @answer = @firstNumber + @secondNumber
  end

  def problem
    "What does #{@firstNumber} plus #{@secondNumber} equal?"
  end

end