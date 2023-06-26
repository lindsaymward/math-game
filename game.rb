class Game
  attr_accessor :player_one, :player_two

  def initialize(questions, announcements)
    @player_one = Player.new('Player 1')
    @player_two = Player.new('Player 2')
    @questions = questions
    @announcements = announcements
    @turn = 1
    @index = 0
  end

  def start_game
    puts "Welcome to TwO-O-Player Math Game. You have three lives, so do your best to get the answers correct or else you'll lose the game!"
    ask_question
  end

  def ask_question
    puts "Question #{@turn}"
    if @turn % 2 == 1 
      puts "Player 1: #{@questions[@index][:question]}"
    else 
      puts "Player 2: #{@questions[@index][:question]}"
    end

    get_answer
  end

  def get_answer
    answer = gets.chomp
    if answer == @questions[@index][:answer].to_s
      puts @announcements[1]
      @turn += 1
      @index += 1
    else
      puts @announcements[0]
      # @turn % 2 == 0 ? @player_two[:lives] -= 1 : @player_one[:lives] -= 1
      @turn += 1
      @index += 1
    end

    end_game?
  end

  def end_game?
    # if @player_one[:lives] == 0
    #   puts "Player 2 has won the game with a score of #{@player_two[:lives]}/3!"
    # end
    # if @player_two[:lives] == 0
    #   puts "Player 1 has won the game with a score of #{@player_one[:lives]}/3!"
    # end
    if @index < 20 
      ask_question 
    else
      puts "It is a tie!"
    end

  end

end