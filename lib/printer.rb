class Printer

  include States

  attr_accessor :current_state

  def initialize
    @current_state = 1
  end

end