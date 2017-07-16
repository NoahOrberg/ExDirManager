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
            p "nothing this command"
        end
    end
end

Main.new
