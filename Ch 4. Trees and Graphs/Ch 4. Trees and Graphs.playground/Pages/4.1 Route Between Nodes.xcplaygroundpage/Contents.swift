import Foundation

/*:
 Given a directed graphs, implement an algorithm to find if there is a path 
 between two nodes.
 */

/*:
 4.1 DFS solution
 */

extension Graph {
    
    func hasRouteDFS(from: Data, to: Data) -> Bool {
        
    }
}

extension GraphNode {
    
    fileprivate func dfsSearch(_ data: Data) -> Bool {
        
    }
}

let connectedNodes = [0: [1,4,5], 1: [3,4], 2: [1], 3: [2,4]]

var graph = Graph(connectedNodes: connectedNodes)

connectedNodes.forEach { from, to in
    to.forEach { toNode in
        assert(graph.hasRouteDFS(from: from, to: toNode) == true)
    }
}
assert(graph.hasRouteDFS(from: 0, to: 2) == true)
assert(graph.hasRouteDFS(from: 3, to: 0) == false)
assert(graph.hasRouteDFS(from: 2, to: 3) == true)


/*:
 4.1 BFS Solution
 */

extension Graph {
    
    func hasRouteBFS(from: Data, to: Data) -> Bool {
        
    }
}

connectedNodes.forEach { from, to in
    to.forEach { toNode in
        assert(graph.hasRouteBFS(from: from, to: toNode) == true)
    }
}

assert(graph.hasRouteBFS(from: 0, to: 2) == true)
assert(graph.hasRouteBFS(from: 3, to: 0) == false)
assert(graph.hasRouteBFS(from: 2, to: 3) == true)
