# encoding: UTF-8

@treedesc = {"AA tree"=>{}, "AVL tree"=>{"xlinux.nist.gov"=>"\n\nA balanced binary search tree where the height of the two subtrees (children) of a node differs by at most one. Look-up, insertion, and deletion are O(log n), where n is the number of nodes in the tree.\n"}, "Binary search tree"=>{"xlinux.nist.gov"=>"\n\nA binary tree where every node's left  subtree has keys less than the node's key, and every right subtree has keys greater than the node's key.\n"}, "Binary tree"=>{"wolfram"=>"To see full output on this page you need to enable JavaScript in your browser. More info »Download full output as:Zoom in to see an enlarged view of any output.AdvertisementBring Wolfram|Alpha output to life with CDF interactivity.", "xlinux.nist.gov"=>"\n\nA tree with at most two children for each  node.\n"}, "Cartesian tree"=>{"xlinux.nist.gov"=>"\n\nA binary search tree in which nodes have a randomly assigned priority.  Updates keep priorities in heap order instead of keeping balance information and doing rebalance operations.\n", "wolfram"=>"Embed Interactive Demonstration New!Files require Wolfram CDF Player or Mathematica."}, "Pagoda (data structure)"=>{"xlinux.nist.gov"=>"\n\nA priority queue implemented with a variant of a binary tree.  The root points to its children, as in a binary tree.  Every other node points back to its parent and down to its leftmost (if it is a right child) or rightmost (if it is a left child) descendant leaf.  The basic operation is merge or meld, which maintains  the heap property.  An element is inserted by merging it as a singleton.  The root is removed by merging its right and left children.  Merging is bottom-up, merging the leftmost edge of one with the rightmost edge of the other.\n"}, "Randomized binary search tree"=>{"xlinux.nist.gov"=>"\n\nA binary search tree in which nodes have a randomly assigned priority.  Updates keep priorities in heap order instead of keeping balance information and doing rebalance operations.\n"}, "Red-black tree"=>{"wolfram"=>"\nAn extended rooted binary\ntree satisfying the following conditions: \n\n1. Every node has two children, each colored either red\nor black. \n\n2. Every tree leaf node is colored black. \n\n3. Every red node has both of its children colored black.\n", "xlinux.nist.gov"=>"\n\nA nearly-balanced tree that uses an extra bit per  node to maintain balance.  No leaf is more than twice as far from the root as any other.\n"}, "Rope (computer science)"=>{}, "Scapegoat tree"=>{"xlinux.nist.gov"=>"\n\nA binary search tree that needs no balance information. Search time is logarithmic, and the amortized cost of update is logarithmic.\n"}, "Self-balancing binary search tree"=>{}, "Splay tree"=>{"xlinux.nist.gov"=>"\n\nA binary search tree in which operations that access nodes restructure the tree.\n", "wolfram"=>"\nA self-organizing data structure which uses rotations to move any accessed key to the root. This leaves recently accessed nodes near the top of the tree, making them very quickly searchable (Skiena 1997, p. 177).\n"}, "T-tree"=>{}, "Tango tree"=>{}, "Threaded binary tree"=>{}, "Top tree"=>{}, "Treap"=>{"xlinux.nist.gov"=>"\n\nA binary search tree in which nodes have a randomly assigned priority.  Updates keep priorities in heap order instead of keeping balance information and doing rebalance operations.\n"}, "Weight-balanced tree"=>{"xlinux.nist.gov"=>"\n\nA binary tree where the balance of every subtree,  ρ(T'), is bounded by α ≤ ρ(T') ≤ 1-α.\n", "wolfram"=>"\nA tree to whose nodes and/or edges labels (usually number)\nare assigned.\n\nThe word \"weight\" also has a more specific meaning when applied to trees, namely the weight of a tree at a point  is the maximum\n number of edges in any branch at  (Harary 1994, p. 35),\n as illustrated above. A point having minimal weight for the tree is called a centroid\n point, and the tree centroid is the set of all\n centroid points.\n"}, "Binary data structure (page does not exist)"=>{"xlinux.nist.gov"=>"\n\nA binary tree in which every level, except possibly the deepest, is completely filled.  At depth n, the height of the tree, all nodes must be as far left as possible.  \n"}, "B-tree"=>{"xlinux.nist.gov"=>"\n\nA balanced search tree in which every node has between  m/2 and m children, where m>1 is a fixed integer.  m is the order.  The root may have as few as 2 children. This is a good structure if much of the tree is in slow memory (disk), since the height, and hence the number of accesses, can be kept small, say one or two, by picking a large m.\n", "wolfram"=>"\n-trees were introduced by Bayer (1972) and McCreight. They are\n a special -ary balanced tree used in databases because their\n structure allows records to be inserted, deleted, and retrieved with guaranteed worst-case\n performance. An -node -tree has height\n , where lg is the logarithm to base 2. The Apple® Macintosh® (Apple,\n Inc., Cupertino, CA) HFS filing system uses -trees to store\n disk directories (Benedict 1995). A -tree satisfies\n the following properties: \n"}, "B+ tree"=>{"xlinux.nist.gov"=>"\n\nA balanced search tree in which every node has between  m/2 and m children, where m>1 is a fixed integer.  m is the order.  The root may have as few as 2 children. This is a good structure if much of the tree is in slow memory (disk), since the height, and hence the number of accesses, can be kept small, say one or two, by picking a large m.\n"}, "B*-tree"=>{"xlinux.nist.gov"=>"\n\nA B-tree in which nodes are kept 2/3 full by redistributing keys to fill two child nodes, then splitting them into three nodes.\n"}, "B sharp tree (page does not exist)"=>{}, "Dancing tree"=>{}, "2-3 tree"=>{"xlinux.nist.gov"=>"\n\nA B-tree of order 3, that is, internal nodes have two or three children.\n", "wolfram"=>"\n-trees were introduced by Bayer (1972) and McCreight. They are\n a special -ary balanced tree used in databases because their\n structure allows records to be inserted, deleted, and retrieved with guaranteed worst-case\n performance. An -node -tree has height\n , where lg is the logarithm to base 2. The Apple® Macintosh® (Apple,\n Inc., Cupertino, CA) HFS filing system uses -trees to store\n disk directories (Benedict 1995). A -tree satisfies\n the following properties: \n"}, "2-3-4 tree"=>{"xlinux.nist.gov"=>"\n\nA B-tree of order 4, that is, internal nodes have two, three, or four children.\n"}, "Queap"=>{}, "Fusion tree"=>{}, "Bx-tree Moving Object Index"=>{}, "Heap (data structure)"=>{}, "Binary heap"=>{"wolfram"=>"\nA sequence  forms\n a (binary) heap if it satisfies  for , where\n  is the floor function,\n which is equivalent to  and \n for . The first member must therefore\n be the smallest. A heap can be viewed as a labeled binary\n tree in which the label of the th node is smaller\n than the labels of any of its descendents (Skiena 1990, p. 35). Heaps support\n arbitrary insertion and seeking/deletion of the minimum value in  times per\n update (Skiena 1990, p. 38).\n", "xlinux.nist.gov"=>"\n\nA complete binary tree where every node has a key more extreme (greater or less) than or equal to the key of its  parent.\n"}, "Weak heap (page does not exist)"=>{}, "Binomial heap"=>{"xlinux.nist.gov"=>"\n\nA heap made of a forest of binomial trees with the heap property numbered k=0, 1, 2, ..., n, each containing either 0 or 2k nodes. Each tree is formed by linking two of its predecessors, by joining one at the root of the other.  The operations of insert a value, decrease a value, delete a value, and merge or join (meld) two queues take O(log n) time.  The find minimum operation is a constant Θ(1).\n"}, "Fibonacci heap"=>{"xlinux.nist.gov"=>"\n\nA heap made of a forest of trees.  The amortized cost of the operations create, insert a value, decrease a value, find minimum, and merge or join (meld) two heaps, is a constant Θ(1).  The delete operation takes O(log n).\n"}, "AF-heap"=>{}, "2-3 heap"=>{"wolfram"=>"\nA sequence  forms\n a (binary) heap if it satisfies  for , where\n  is the floor function,\n which is equivalent to  and \n for . The first member must therefore\n be the smallest. A heap can be viewed as a labeled binary\n tree in which the label of the th node is smaller\n than the labels of any of its descendents (Skiena 1990, p. 35). Heaps support\n arbitrary insertion and seeking/deletion of the minimum value in  times per\n update (Skiena 1990, p. 38).\n"}, "Soft heap"=>{}, "Pairing heap"=>{}, "Leftist tree"=>{"xlinux.nist.gov"=>"\n\nA priority queue implemented with a variant of a binary tree.  Every node has a count which is the distance to the nearest leaf.  In addition to the heap property, leftist trees are kept so the right descendant of each node has the shorter distance to a leaf.\n"}, "Beap"=>{}, "Skew heap"=>{}, "Ternary heap"=>{}, "D-ary heap"=>{}, "Brodal queue"=>{}, "Tree"=>{"wolfram"=>"\nA tree is a mathematical structure that can be viewed as either a graph or as a data structure. The two views are equivalent,\n since a tree data structure contains not only a\n set of elements, but also connections between elements, giving a tree graph.\n"}, "Radix tree"=>{"xlinux.nist.gov"=>"\n\nA compact representation of a trie in which any node that is an only child is merged with its  parent.\n"}, "Suffix tree"=>{"xlinux.nist.gov"=>"\n\nA compact representation of a trie corresponding to the suffixes of a given string where all nodes with one child are merged with their parents.\n"}, "Suffix array"=>{"xlinux.nist.gov"=>"\n\nAn array of all starting positions of suffixes of a string arranged in lexicographical order. This allows a binary search or fast substring search.\n"}, "Compressed suffix array"=>{}}
