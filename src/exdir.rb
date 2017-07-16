require_relative 'command'
require_relative 'command_parser'
require_relative 'dir_repository'

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
