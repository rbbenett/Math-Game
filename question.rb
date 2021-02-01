class Question

  def initialize(number)
    @number = number
  end

  def get_number
    @number
  end

end

num1 = Question.new(rand(1...20))
num2 = Question.new(rand(1...20))

@num1 = num1.get_number
@num2 = num2.get_number



