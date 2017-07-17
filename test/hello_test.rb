require 'test/unit'
require '../src/hello'

class TestHelloWorld < Test::Unit::TestCase
    def testHelloWorld
        actual = Hello.new.greeting
        expected = "HelloWorld"

        assert_equal expected, actual
    end
end
