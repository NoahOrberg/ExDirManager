require_relative 'command'

class CommandParser
    attr_reader :argv
    def initialize(argv)
        @argv = argv
    end

    def parse
        mode = @argv[0]
        dir_name = @argv[1]
        hash_argv = Hash[*@argv[2..-1]]
        Command.new(mode, dir_name, hash_argv["-h"], hash_argv["-m"], hash_argv["-f"])
    end
end
