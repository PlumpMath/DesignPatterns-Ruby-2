require 'pattern'
require 'pattern/component'
require 'pattern/composite'
require 'pattern/leaf'
require 'test/unit'

class TestComposite < Test::Unit::TestCase
  def test_component
    object = Object.new.extend( Pattern::Component )
    assert_kind_of( Pattern::Component, object,  "can consume Pattern::Component" )

    assert_respond_to( object, :name,           "can name()" )
    assert_respond_to( object, :children,       "can children()" )
    assert_respond_to( object, :parent,         "can parent()" )

    assert_respond_to( object, :add,            "can add()" )
    assert_respond_to( object, :remove,         "can remove()" )
    assert_respond_to( object, :get_child,      "can get_child()" )
    assert_respond_to( object, :is_composite,   "can is_composite()" )

  end

  def test_composite
    object = Object.new.extend( Pattern::Composite )
    assert_kind_of( Pattern::Component, object,  "can consume Pattern::Composite" )
    assert_kind_of( Pattern::Composite, object,  "can consume Pattern::Composite" )

    assert_respond_to( object, :name,           "can name()" )
    assert_respond_to( object, :children,       "can children()" )
    assert_respond_to( object, :parent,         "can parent()" )

    assert_respond_to( object, :add,            "can add()" )
    assert_respond_to( object, :remove,         "can remove()" )
    assert_respond_to( object, :get_child,      "can get_child()" )
    assert_respond_to( object, :is_composite,   "can is_composite()" )

    comp = Object.new( :name, 'box' ).extend( Pattern::Component )
#    assert_equal( comp.name, 'box',             "name set correctly" )    
  end

  def test_leaf
    object = Object.new.extend( Pattern::Leaf )
    assert_kind_of( Pattern::Component, object, "can consume Pattern::Composite" )
    assert_kind_of( Pattern::Leaf, object,      "can consume Pattern::Leaf" )

    assert_respond_to( object, :name,           "can name()" )
    assert_respond_to( object, :children,       "can children()" )
    assert_respond_to( object, :parent,         "can parent()" )

    assert_respond_to( object, :add,            "can add()" )
    assert_respond_to( object, :remove,         "can remove()" )
    assert_respond_to( object, :get_child,      "can get_child()" )
    assert_respond_to( object, :is_composite,   "can is_composite()" )
  end

end
