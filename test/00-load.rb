require 'test/unit'
require 'pattern/toc'
require 'pattern/behavioral/toc'
require 'pattern/creational/toc'
require 'pattern/structural/toc'

class LoadTest < Test::Unit::TestCase
  def load_toc
    assert_equal 1, 1
  end
end
