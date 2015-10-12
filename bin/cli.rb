require_relative '../lib/concerns/states.rb'
require_relative '../lib/word.rb'
require_relative '../lib/printer.rb'
require_relative '../lib/game.rb'


class CLI

  attr_accessor :cli_on, :game

  def initialize 
    @cli_on = true
    puts "Welcome to Hangperson! Prepare to be ROCKED!!"
  end


  def run
    while @cli_on == true
      puts "What would you like to do? ('play', 'exit')>> "
      choice = gets.chomp
      case choice
      when "play"
        game = Game.new
        game.run
      when "exit"
        puts "Goodbye!"
        @cli_on = false
      else
        puts "Huh?"
      end 
    end 
  end 

end 

cli = CLI.new
cli.run

