class BST
end

class Node
  def initialize(value)
    @value = value
  end

  attr_reader :value
  attr_accessor :index, :left_node, :right_node

  def leaf?
    left_node.nil? && right_node.nil?
  end
end

class Tree
  attr_reader :root

  def add_node(node)

    if @root.nil?
      @root = node
      return 0
    end

    current_node = @root

    counter = 0

    loop do
      break if current_node.leaf? && counter != 0

      if node.value > current_node.value
        if right_node = current_node.right_node
          current_node = right_node
        else
          current_node.right_node = node
          break
        end

      elsif node.value < current_node.value
        if left_node = current_node.left_node
          current_node = left_node
        else
          current_node.left_node = node
          break
        end

      elsif node.value == current_node.value
        return 1
      end
      counter += 1

    end
  end
end
