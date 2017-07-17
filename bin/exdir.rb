#!/usr/bin/ruby
require_relative '../src/command'
require_relative '../src/command_parser'
require_relative '../src/dir_repository'

class Main
    def initialize
        cmd = CommandParser.new(ARGV).parse
        dir = DirRepository.new(cmd)
        case cmd.mode
        when "generate" then
            dir.make
        else
            puts "ExDirManager - Extreme Directory Manager"
            puts "usage: exdir.rb [commands] [options]"
            puts "Commands:"
            puts "   generate        Generate Directory"
            puts "Options:"
            puts "   -f num          Specify the number of digits as <num>"
            puts "   -m max          Specify the number of directories as <max>"
        end
    end
end

Main.new
