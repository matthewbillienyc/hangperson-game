require_relative '../lib/concerns/states.rb'
require_relative '../lib/word.rb'
require_relative '../lib/printer.rb'
require_relative '../lib/game.rb'


class CLI

  attr_accessor :cli_on
  attr_reader :game

  def initialize 
    @cli_on = true
    @game = Game.new
    puts "Welcome to Hangperson! Type play to play a new game, exit to exit, or help to get help."
  end


  def run
    while @cli_on == true
      choice = gets.chomp
      case choice
      when "help"
        game.printer.print.help
      when "play"
        game.run
      when "exit"
        puts "Goodbye!"
        @cli_on = false
      end 
    end 
  end 


end 

cli = CLI.new
cli.run

