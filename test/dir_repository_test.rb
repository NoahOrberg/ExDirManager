require 'test/unit'
require '../src/dir_repository.rb'

class DirRepositoryTest < Test::Unit::TestCase 
    def test_constructor
        dir_gen = DirRepository.new("Prog0", "Ex", 10, 2)
        assert_equal "Prog0", dir_gen.dir_name
        assert_equal "Ex", dir_gen.header
        assert_equal 10, dir_gen.max
        assert_equal 2, dir_gen.digit
    end
end
