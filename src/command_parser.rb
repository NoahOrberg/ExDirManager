require_relative 'command'

class CommandParser
    attr_reader :argv
    def initialize(argv)
        @argv = argv
    end

    def parse
        mode = @argv[0]
        dir_name = @argv[1].nil? ? "Prog0":@argv[1]
        hash_argv = Hash[*@argv[2..-1]]
        header = hash_argv["-h"].nil? ? "Ex":hash_argv["-h"]
        max = hash_argv["-m"].nil? ? "10":hash_argv["-m"]
        digit = hash_argv["-f"].nil? ? "2":hash_argv["-f"]
        Command.new(mode, dir_name, header, max, digit)
    end
end
