class Player
  attr_reader :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def take_a_life
    @lives -= 1
  end

  def player_is_dead
    @lives == 0
  end

  def new_question
    new_question = Question.new
    new_question.ask_question(name)
    print '> '
    @guess = $stdin.gets.chomp
    if new_question.check_answer?(@guess.to_i)
      puts 'YES! You are correct.'
    else
      puts 'Seriously? No!'
      take_a_life
    end
  end
end
