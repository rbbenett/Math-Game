# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require 'pp'
require './player'
require './question'
require './turn'



puts "#{@p1Name}: What does #{@num1} plus #{@num2} equal?"
print "> "
answer = $stdin.gets.chomp.to_i
correctAnswer = @num1 + @num2

if answer == correctAnswer
  puts "#{@name}: YES! You are correct."
else
  puts "#{@name}: Seriously? No!"
  @p1Lives -= 1
end
