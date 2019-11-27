<h1>Binary Search Tree</h1>
<h3>Building a Binary Search Tree in Ruby as part of The Odin Project's Ruby Programming course</h3>
<a href="https://www.theodinproject.com/courses/ruby-programming/lessons/data-structures-and-algorithms?ref=lnav">Project Link</a>

<h5>Assignment</h5>
<p>You’ll build a simple binary search tree in this assignment. In this lesson, our tree won’t handle duplicate values as they are more complicated and result in trees that are much harder to balance. Be sure to always remove duplicate values or check for an existing value before inserting.</p>
<hr/>
<h5>Goals</h5>
<ol>
  <li>Build a Node class. It is should have attributes for the data it stores as well as its left and right children. As a bonus, try including the Comparable module and make nodes compare using their data attribute.</li>
  <li>Write a method #build_tree which takes an array of data (e.g. [1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324]) and turns it into a balanced binary tree full of Node objects appropriately placed (don’t forget to sort and remove duplicates!). The #build_tree method should return the level-1 root node.</li>
  <li>Build a Tree class which accepts an array when initialized. The Tree class should have a root attribute which uses the return value of #build_tree.</li>
  <li>Write an #insert and #delete method which accepts a value to insert/delete (you’ll have to deal with several cases for delete such as when a node has children or not).</li>
  <li>Write a #find method which accepts a value and returns the node with the given value.</li>
  <li>write a #level_order method which accepts a block. The method should traverse the tree in breadth-first level order and yield each node to the provided block. This method can be implemented using either iteration or recursion (try implementing both!). As a bonus, make the method return an array of values if no block is given. Tip: You will want to use an array acting as a queue to keep track of all the child nodes that you have yet to traverse and to add new ones to the list (as you saw in the video).</li>
  <li>Write #inorder, #preorder, and #postorder methods which accept a block. Each method should traverse the tree in their respective depth-first order and yield each node to the provided block. As a bonus, make the method return an array of values if no block is given.</li>
  <li>Write a #depth method which accepts a node and returns the depth(number of levels) beneath the node.</li>
  <li>Write a #balanced? method which checks if the tree is balanced. A balanced tree is one where the difference between heights of left subtree and right subtree is not more than 1.</li>
  <li>Write a #rebalance! method which rebalances an unbalanced tree. Tip: You’ll want to create a level-order array of the tree before passing the array back into the #build_tree method.</li>
  <li>Write a simple driver script that does the following:
    <ol>
        <li>1. Create a binary search tree from an array of random numbers (`Array.new(15) { rand(1..100) }`)</li>
        <li>2. Confirm that the tree is balanced by calling `#balanced?`</li>
        <li>3. Print out all elements in level, pre, post, and in order</li>
        <li>4. try to unbalance the tree by adding several numbers > 100</li>
        <li>5. Confirm that the tree is unbalanced by calling `#balanced?`</li>
        <li>6. Balance the tree by calling `#rebalance!`</li>
        <li>7. Confirm that the tree is balanced by calling `#balanced?`</li>
        <li>8. Print out all elements in level, pre, post, and in order</li>
    </ol>
  </li>
</ol>

<p>Pat yourself on the back! As a super-duper bonus, notice how all the depth-first methods share a similar signature and are basically just a re-arrangement of the same 3 lines… try dynamically declaring the three methods using metaprogamming techniques like #define_method.</p>
