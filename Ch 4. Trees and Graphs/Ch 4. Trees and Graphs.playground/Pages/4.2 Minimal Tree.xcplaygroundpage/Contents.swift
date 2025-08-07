import Foundation

/*:
 Given a sorted (increasing order) array with unique integer elements, implement an algorithm
 to create a binary search tree with minimal height.
 */

extension Tree {
    
    init?(sortedElements: [Element]) {
        
    }
    
    private static func insert(_ elements: [Element]) -> Tree<Element>? {
        
    }
}

var treeDepth = 4
var numberOfElements = 2.pow(treeDepth) - 1
var nodeData = (0..<numberOfElements).map { $0 }
var tree = Tree(sortedIncreasing: nodeData)!
print(tree.description)
assert(tree.height == treeDepth - 1, "\(tree.height) == \(treeDepth)")

