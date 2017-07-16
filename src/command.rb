class Command
    attr_reader :mode, :opts
    def initialize(mode, opts)
        @mode = mode
        @opts = opts
    end
end
