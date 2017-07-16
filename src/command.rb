class Command
    attr_reader :mode, :dir_name, :header, :max, :digit
    def initialize(mode, dir_name, header, max, digit)
        @mode = mode
        @dir_name = dir_name
        @header = header
        @max = max.to_i
        @digit = digit.to_i
    end
end
