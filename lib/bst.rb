class Node
    attr_accessor :value, :left, :right

    def initialize(val, l = nil, r = nil)
        @value = val
        @left = l
        @right = r

    end

end

class Tree
    attr_reader :root

    def initialize(arr)
        #passes an array to the tree builder function
        @root = create_root(arr.sort.uniq)

    end

    def create_root(arr)
        # accepts an array to set the root, passes sub-arrays to the build_tree function
        n = Node.new(arr[midex(arr)])
        n.left = build_tree(arr[0 .. midex(arr)-1])
        n.right = build_tree(arr[midex(arr)+1 .. -1])
        return n
    end


    def build_tree(arr)
        # accepts an array and builds the rest of the tree recursively

        #base case
        n = Node.new(arr[midex(arr)])
        return n if arr.length <= 1

        #recursive case
        n.left = build_tree(arr[0 .. midex(arr)-1])
        n.right = build_tree(arr[midex(arr)+1 .. -1])
        return n

    end

    def insert(val)
        # inserts a new node into the tree
        new_node = Node.new(val)
        
        current_node = @root

        while current_node
            comparison = new_node.value <=> current_node.value
            if comparison >= 1
                if current_node.right
                    current_node = current_node.right
                else
                    current_node.right = new_node
                    break
                end
            elsif comparison == 0
                puts "ERROR: Node with value #{val} already exists!"
                return
            else
                if current_node.left
                    current_node = current_node.left
                else
                    current_node.left = new_node
                    break
                end
            end
        end

    end

    def delete(val)
        # deletes a node from the tree
        
        current_node = @root

        while current_node
            comparison = val <=> current_node.value
            if comparison >= 1
                if current_node.right
                    current_node.right = nil if current_node.right.value == val
                    current_node = current_node.right
                else
                    puts "ERROR: No node of that value to delete!"
                end
            else
                if current_node.left 
                    current_node.left = nil if current_node.left.value == val
                    current_node = current_node.left
                else
                    puts "ERROR: No node of that value to delete"
                end
            end
        end

### NEED TO RELINK LEFT & RIGHT IN CASE OF DELETIONS!!!


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

    private
    def midex(arr)
        #helper function that returns the index of the middle value in an array
        return ((arr.length-1).to_f/2).ceil.to_i
    end

end

lost = Tree.new([4,8,15,16,23,42,108])
lost.insert(12)

# lost.delete(12)

puts lost.root.left.right.left