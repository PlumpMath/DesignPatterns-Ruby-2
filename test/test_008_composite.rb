require 'pattern'
require 'pattern/component'
require 'pattern/composite'
require 'pattern/leaf'
require 'test/unit'

class DocClasses < Test::Unit::TestCase
  def test_comsumption
    component = Object.new.extend( Pattern::Component )
    assert_kind_of( Pattern::Component, component, "can consume Pattern::Component" )

    composite = Object.new.extend( Pattern::Composite )
    assert_kind_of( Pattern::Composite, composite, "can consume Pattern::Composite" )

    leaf = Object.new.extend( Pattern::Leaf )
    assert_kind_of( Pattern::Leaf, leaf, "can consume Pattern::Leaf" )
  end

end
