module States

  def state_start
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

  def state_one_miss
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

  def state_two_miss
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

  def state_three_miss
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

  def state_four_miss
    <<-OOO
    _____ 
   |/   |
   |   (oo)
   |  ._|_.
   |    |
   |   
   |
___|___

OOO
  end

  def state_five_miss
    <<-OOO
    _____ 
   |/   |
   |   (oo)
   |  ._|_.
   |    |
   |  _|
   |
___|___

OOO
  end

  def state_six_miss
    <<-OOO
    _____ 
   |/   |
   |   (oo)
   |  ._|_.
   |    |
   |  _| |_
   |
___|___

OOO
  end

  def state_dead
    <<-OOO
    _____ 
   |/   |
   |    |
   |   (xx)
   |  ._|_.
   |    |
   |  _| |_
___|___

OOO
  end

end