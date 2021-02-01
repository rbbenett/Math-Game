class Game
  def initialize(name)
    @name = name
    @player_1 = Player.new('Player 1')
    @player_2 = Player.new('Player 2')
  end

  def start
    puts "A New Game Has Started!"
    turn
  end

  def show_player_info
    puts "P1: #{@player_1.lives}/3 vs P2: #{@player_2.lives}/3"
  end

  def turn
    @player_1.new_question
    check_score
    @player_2.new_question
    check_score
    show_player_info
    puts '-----NEW-TURN-----'
    turn
  end

  def check_score
    if @player_1.player_is_dead
      winner(@player_2)
    elsif @player_2.player_is_dead
      winner(@player_1)
    end
  end

  def winner(player)
    puts "#{player.name} wins with a score of #{player.lives}/3"
    puts '-----GAME-OVER----'
    puts 'Thanks for playing!'
    exit(0)
  end
end
