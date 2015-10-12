class Word

  attr_reader :word_list, :alphabet, :users_array
  attr_accessor :word

  def initialize
    @word_list = ["iterate", "enumerator", "conditional", "boolean", "flow", "github", "commit", "octocat", "flatiron", "internet", "developer", "hacking", "hacker", "hashtronauts", "flombaum", "turing", "lovelace", "hopper", "debugging", "asia", "meredith", "hideyuki", "matthew", "vinnie", "jeff", "ian", "deniz"]
    @alphabet = "abcdefghijklmnopqrstuvwxyz".split("")
    choose_random_word
    word_array
    blank_space_array
  end

  def reset
    @misses.clear
    @users_array.clear
    @letters_guessed.clear
    @word_array.clear
    choose_random_word
    word_array
    blank_space_array
  end

  def misses
    @misses ||= []
  end

  def users_array
    @users_array ||= []
  end

  def letters_guessed
    @letters_guessed ||= []
  end

  def choose_random_word
    @word = @word_list.sample
  end

  def word_array
    @word_array = @word.split("")
  end

  def blank_space_array
    @users_array = Array.new(@word_array.size, "_")
  end

  def add_letter(correct_guess)
    correct_letter_indexes = []
    word_array.each_with_index do |letter, index|
      correct_letter_indexes << index if letter == correct_guess
    end
    correct_letter_indexes.each do |index|
      users_array[index] = correct_guess
    end
  end

end
