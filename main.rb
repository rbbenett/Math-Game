# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require 'pp'
require './player'
require './question'
require './game'


new_game = Game.new('New Game')

new_game.start