require 'pattern'
  require 'pattern/behavioral'
  require 'pattern/creational'
  require 'pattern/structural'
    require 'pattern/structural/composite'

require 'test/unit'

class DocClasses < Test::Unit::TestCase
  def test_instantiation
    assert_not_nil( Pattern.new,                            "instantiate Pattern" )
    assert_not_nil( Pattern::Behavioral.new,                "instantiate Pattern::Behavioral" )
    assert_not_nil( Pattern::Creational.new,                "instantiate Pattern::Creational" )
    assert_not_nil( Pattern::Structural.new,                "instantiate Pattern::Structural" )
    assert_not_nil( Pattern::Structural::Composite.new,     "instantiate Pattern::Structural::Composite" )
  end
end
