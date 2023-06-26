require './questions'
require './announcements'
require './player'
require './game'

game = Game.new(@questions, @announcements)
game.start_game