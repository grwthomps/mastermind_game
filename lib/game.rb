class Game

  def initialize
    @answer = 'grrb' # add random string generation (ord_vals = [114,103,98,121])
    @turns = 0
  end

  def intro
    puts "I have generated a beginner sequence with four elements made up of: (r)ed,
    (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game."

    guess_input
  end

  def guess_input
    puts "What's your guess?"
    print '> '

    guess = gets.chomp.downcase
    guess_verification(guess)
  end

  def guess_verification(guess)
    if guess == 'c' || guess == 'cheat'
      show_answer
    elsif guess == 'q' || guess == 'quit'
      puts 'Exiting game...'
    elsif guess.count(guess) != 4
      guess_error(guess)
    elsif guess == @answer
      end_game
    else
      new_turn(guess)
    end
  end

  def show_answer
    puts @answer

    guess_input
  end

  def guess_error(guess)
    if guess.count(guess) > 4
      puts 'Guess is too long. Please try again.'
    elsif guess.count(guess) < 4
      puts 'Guess is too short. Please try again.'
    end

    guess_input
  end

  def new_turn(guess)
    @turn += 1
    ans_arr = @answer.chars
    guess_arr = guess.chars

    guess_arr.each do |char|
      ans_arr.include?(char)
    end
  end

  def end_game
  end
end
