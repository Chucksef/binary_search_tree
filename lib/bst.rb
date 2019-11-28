class Node
    attr_accessor :value, :left, :right

    def initialize(val = nil, l = nil, r = nil)
        @value = val
        @left = l
        @right = r

    end

end

class Tree
    attr_reader :root

    def initialize(arr)
        #passes an array to the tree builder function
        @root = build_tree(arr.sort.uniq)
    end

    def build_tree(arr)
        # accepts an array to set the root, passes sub-arrays to the subtree function
        n = Node.new(arr[midex(arr)])
        n.left = subtree(arr[0 .. midex(arr)-1])
        n.right = subtree(arr[midex(arr)+1 .. -1])
        return n
    end

    def subtree(arr)
        # accepts an array and builds the rest of the tree recursively

        #base case
        n = Node.new(arr[midex(arr)])
        return n if arr.length <= 1

        #recursive case
        n.left = subtree(arr[0 .. midex(arr)-1])
        n.right = subtree(arr[midex(arr)+1 .. -1]) if arr[midex(arr)+1 .. -1].length > 0
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
                    if current_node.right.value == val
                        children = get_children(current_node.right)
                        current_node.right = build_tree(children)
                        break
                    end
                    current_node = current_node.right
                else
                    puts "ERROR: No node of that value to delete"
                end
            else
                if current_node.left 
                    if current_node.left.value == val
                        children = get_children(current_node.left)
                        current_node.left = build_tree(children)
                        break
                    end
                    current_node = current_node.left
                else
                    puts "ERROR: No node of that value to delete"
                end
            end
        end
    end

    def find(val)
        # searches the tree for a value and returns a node if found
        
        current_node = @root

        while current_node
            comparison = val <=> current_node.value
            if comparison >= 1
                if current_node.right 
                    return current_node.right if current_node.right.value == val
                    current_node = current_node.right
                else
                    puts "ERROR: No node of that value to delete"
                end
            else
                if current_node.left 
                    return current_node.left if current_node.left.value == val
                    current_node = current_node.left
                else
                    puts "ERROR: No node of that value to delete"
                end
            end
        end
    end

    def breadth_first
        # traverses the tree in breadth first order, -- block

    end

    def in_order
        # Depth first traversal in L-D-R order -- block

    end

    def pre_order
        # Depth first traversal in D-L-R order -- block

    end

    def post_order
        # Depth first traversal in L-R-D order -- block

    end

    def balanced?
        # returns true if the tree is balanced

    end

    def rebalance!
        # obviously rebalances the tree

    end
    
    def get_children(n)
        #returns a sorted array of all children of a node
        children = []
        node = n
        i = 0

        #build array of all child nodes
        while node
            children << node.left if node.left
            children << node.right if node.right
            node = i >= children.length ? nil : children[i]
            i += 1
        end

        #transform node array into values only and sort
        children = children.map {|x| x.value }.sort
        children

    end

    private

    def midex(arr)
        #helper function that returns the index of the middle value in an array
        return ((arr.length-1).to_f/2).ceil.to_i
    end

end

lost = Tree.new([4,8,12,15,16,23,31,42,108])

lost.insert(10)
lost.insert(9)
lost.insert(11)
lost.insert(3)
lost.insert(5)

lost.delete(8)

puts lost.find(42).value