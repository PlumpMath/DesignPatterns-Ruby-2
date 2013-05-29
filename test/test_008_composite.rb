require 'pattern'
require 'pattern/component'
require 'pattern/composite'
require 'pattern/leaf'
require 'test/unit'

class TestComposite < Test::Unit::TestCase
  def test_component
    component = Object.new.extend( Pattern::Component )
    assert_kind_of( Pattern::Component, component,  "can consume Pattern::Component" )

    assert_respond_to( component, :name,            "can name()" )
    assert_respond_to( component, :children,        "can children()" )
    assert_respond_to( component, :parent,          "can parent()" )

    assert_respond_to( component, :add,            "can add()" )
    assert_respond_to( component, :remove,         "can remove()" )
    assert_respond_to( component, :get_child,      "can get_child()" )
    assert_respond_to( component, :is_composite,   "can is_composite()" )
  end

  def test_composite
    composite = Object.new.extend( Pattern::Composite )
    assert_kind_of( Pattern::Component, composite,  "can consume Pattern::Composite" )
    assert_kind_of( Pattern::Composite, composite,  "can consume Pattern::Composite" )

    assert_respond_to( composite, :name,            "can name()" )
    assert_respond_to( composite, :children,        "can children()" )
    assert_respond_to( composite, :parent,          "can parent()" )

    assert_respond_to( composite, :add,            "can add()" )
    assert_respond_to( composite, :remove,         "can remove()" )
    assert_respond_to( composite, :get_child,      "can get_child()" )
    assert_respond_to( composite, :is_composite,   "can is_composite()" )
  end

  def test_leaf
    leaf = Object.new.extend( Pattern::Leaf )
    assert_kind_of( Pattern::Component, leaf,       "can consume Pattern::Composite" )
    assert_kind_of( Pattern::Leaf, leaf,            "can consume Pattern::Leaf" )

    assert_respond_to( leaf, :name,                 "can name()" )
    assert_respond_to( leaf, :children,             "can children()" )
    assert_respond_to( leaf, :parent,               "can parent()" )

    assert_respond_to( leaf, :add,                  "can add()" )
    assert_respond_to( leaf, :remove,               "can remove()" )
    assert_respond_to( leaf, :get_child,            "can get_child()" )
    assert_respond_to( leaf, :is_composite,         "can is_composite()" )
  end

end
