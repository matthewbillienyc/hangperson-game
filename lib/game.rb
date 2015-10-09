class Game

  attr_accessor :guess, :game_over 
  attr_reader :printer, :word_gen
  
  def initialize
    @printer = Printer.new
    @word_gen = Word.new
    @printer.word_gen = @word_gen
    @game_over = false
  end

  def input_guess
    print "Enter your guess >>"
    @guess = gets.chomp.downcase
  end

  def valid_guess?
    word_gen.alphabet.include?(guess) && (word_gen.letters_guessed.include?(guess) == false)
  end

  def guess_checker
    if valid_guess?
      word_gen.letters_guessed << guess
      if word_gen.word_array.include?(guess)
        word_gen.add_letter(guess)
      else
        word_gen.misses << guess
        increment_board_state
      end
    else
      puts "You either already guessed this letter, or your input was invalid."
    end
  end

  def increment_board_state
    printer.current_state += 1
  end

  def user_turn
    input_guess
    guess_checker
    printer.full_display
    win_or_lose?
  end 

  def run
    printer.full_display
    while game_over != true
      user_turn
    end 
  end 

  def win?
    if word_gen.users_array == word_gen.word_array
       true
    end 
  end 

  def lose?
    if printer.current_state == 6
       true
    end 
  end 

  def win_or_lose?
    if win? 
      printer.win_message
      @game_over = true
    elsif lose?
      printer.current_state = 7
      printer.full_display
      printer.lose_message
      @game_over = true
    end 
  end



end
