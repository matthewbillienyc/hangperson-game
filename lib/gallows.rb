class Gallows

  attr_accessor :current_state

  def initialize
    @current_state = 1
    @gallow_states = {1:start_state}
    }
  end

  guess
  if wrong
    current_state += 1

    gallow_states[gallows.current_state]

  def start_state
    <<-OOO
    _____ 
   |/   |
   |
   |
   |
   |
   |
___|___

OOO

  end

  def first_miss
    <<-OOO
    _____ 
   |/   |
   |   (oo)
   |  
   |
   |
   |
___|___

OOO

  end

  def second_miss
    <<-OOO
    _____ 
   |/   |
   |   (oo)
   |    |
   |    |
   |   
   |
___|___

OOO
  end

  def third_miss
    <<-OOO
    _____ 
   |/   |
   |   (oo)
   |  ._|
   |    |
   |   
   |
___|___

OOO
  end    

  def fourth_miss
  end

end