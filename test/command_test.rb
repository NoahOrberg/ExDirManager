require 'test/unit'
require '../src/command'

class TestCommand < Test::Unit::TestCase
    def test_constructor
        mode = "generate"
        opts = ["Prog0", "-h", "Ex", "-f", "2", "-m", "13"]
        cmd = Command.new(mode, opts)
        assert_equal mode, cmd.mode
        assert_equal opts, cmd.opts
    end
end
