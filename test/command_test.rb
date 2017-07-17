require 'test/unit'
require '../src/command'

class TestCommand < Test::Unit::TestCase
    def test_constructor
        cmd = Command.new("generate", "Prog0", "Ex", "2", "13")
        assert_equal "generate", cmd.mode
        assert_equal "Prog0", cmd.dir_name
        assert_equal "Ex", cmd.header
        assert_equal 2, cmd.max
        assert_equal 13, cmd.digit
    end
end
