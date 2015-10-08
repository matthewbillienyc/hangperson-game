module States

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

  def fifth_miss
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

  def sixth_miss
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

  def dead
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