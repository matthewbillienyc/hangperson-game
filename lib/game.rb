class Game

  attr_accessor :guess
  attr_reader :printer, :word_gen
  
  def initialize
    @printer = Printer.new
    @word_gen = Word.new
    @printer.word_gen = @word_gen
  end

  def input_guess
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
      end
    else
      puts "You either already guessed this letter, or your input was invalid."
    end
  end

end
