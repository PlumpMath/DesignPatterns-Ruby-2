module Pattern::Component

  attr_reader :children, :parent, :name
  attr_writer :children, :parent

  def add;          end
  def remove;       end
  def get_child;    end
  def is_composite; end
end
