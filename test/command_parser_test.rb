require 'test/unit'
require '../src/command_parser'

class TestCommand < Test::Unit::TestCase
    def test_parse
        actual = CommandParser.new(["generate", "Prog0", "-h", "Ex", "-f", "2", "-m", "13"]).parse
        expected = Command.new("generate", "Prog0", "Ex", "13", "2")
        assert_equal expected.mode, actual.mode 
        assert_equal expected.dir_name, actual.dir_name 
        assert_equal expected.header, actual.header 
        assert_equal expected.max, actual.max 
        assert_equal expected.digit, actual.digit 
    end
end
