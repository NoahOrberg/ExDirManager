require 'test/unit'
require '../src/dir_repository.rb'

class DirRepositoryTest < Test::Unit::TestCase 
    def test_constructor
        dir_gen = DirRepository.new("Prog0", "Ex")
        assert_equal "Prog0", dir_gen.dir_name
        assert_equal "Ex", dir_gen.header
    end
end
