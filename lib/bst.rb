class Node
    attr_accessor :value, :left, :right

    def initialize(val, l = nil, r = nil)
        @value = val
        @left = l
        @right = r

    end

    def greater?(n)
        # compares the values of this node to another node
        return @value > n.value ? true : false
    end

end

class Tree
    attr_reader :root

    def initialize(arr)
        #accepts array and passes it to the tree builder function
        @root = build_tree(arr)

    end

    def build_tree(arr)
        # accepts array and builds the tree, returns the root node

        #sort array
        #root = middle value
        #


    end

    def insert
        # inserts a new node into the tree

    end

    def delete
        # deletes a node from the tree

    end

    def find
        # searches the tree for a value and returns a node if found

    end

    def breadth_first
        # traverses the tree in breadth first order, accepting a block

    end

    def in_order
        # Depth first traversal in L-D-R order

    end

    def pre_order
        # Depth first traversal in D-L-R order

    end

    def post_order
        # Depth first traversal in L-R-D order

    end

    def balanced?
        # returns true if the tree is balanced

    end

    def rebalance!
        # obviously rebalances the tree

    end
end

n1 = Node.new(4)
n2 = Node.new(8)
puts n2.greater?(n1)