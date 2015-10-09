require_relative '../lib/concerns/states.rb'
require_relative '../lib/word.rb'
require_relative '../lib/printer.rb'
require_relative '../lib/game.rb'
require_relative '../lib/cli.rb'

require 'pry'

def reload!
  load 'lib/concerns/states.rb'
  load 'lib/word.rb'
  load 'lib/printer.rb'
  load 'lib/cli.rb'
end

Pry.start
