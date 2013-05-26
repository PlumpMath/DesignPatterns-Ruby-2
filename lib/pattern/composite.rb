module Pattern::Composite

  include Pattern::Component
  extend  Pattern::Component

  def add
  end

  def remove
  end

  def get_child
  end

  def is_composite
    1
  end

end
