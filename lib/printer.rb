require_relative 'word.rb'

class Printer

  include States

  attr_accessor :current_state, :word_gen

  def initialize
    @current_state = 0 # this will increased by 1 each time a miss occurs, incrementation will occur in the game class
  end

  def state_array # this is an array of the 8 different possible gallow states
    [state_start, state_one_miss, state_two_miss, state_three_miss, state_four_miss, state_five_miss, state_six_miss, state_dead]
  end

  def gallows # prints current state of the gallows
    puts state_array[@current_state]
  end

  def word_board # formats the users_array from the word_gen, to look like this ex: [ d _ _ a _ ]
    word_board = "[ "
    word_gen.users_array.each do |space|
      word_board << space + " "
    end
    word_board << "]"
    puts word_board # this will look something like this: [ _ e l l _ ]
  end  

  def misses(misses_array)
    puts "[" << misses_array.sort.join("") << "]"
  end

  # need a method that formats and puts wrong guess (misses)

  def full_display
    gallows
    word_board  
    misses(word_gen.misses)  
  end

end


