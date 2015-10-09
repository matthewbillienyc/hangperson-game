require_relative '../lib/concerns/states.rb'
require_relative '../lib/word.rb'
require_relative '../lib/printer.rb'
require_relative '../lib/game.rb'

require 'pry'

def reload!
  load 'lib/concerns/states.rb'
  load 'lib/word.rb'
  load 'lib/printer.rb'
end

Pry.start