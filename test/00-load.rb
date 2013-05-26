require 'pattern'
require 'test/unit'

class LoadTest < Test::Unit::TestCase
  def test_pattern
    assert_not_nil( Pattern.new, "instantiate Pattern" )
  end
end
