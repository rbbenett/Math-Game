# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require 'pp'
require './player'
require './question'
require './turn'

print "#{@name}: What does #{@num1} plus #{@num2} equal? "
gets.chomp.to_i
