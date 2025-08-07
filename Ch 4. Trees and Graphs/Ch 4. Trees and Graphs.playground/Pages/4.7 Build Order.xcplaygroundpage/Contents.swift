import Foundation

/*:
 You are given a list of projects and dependencies (which is a list of pairs of projects
 where the first project is dependent on the second project). All of a project's dependencies
 must be built before the project is. Find a build order that allows the project to be built. 
 If there is no valid build order, return an error.
 
 Example:
 
 Input:
 
 `projects: a, b, c, d, e, f` 
 
 `dependencies: (d, a), (b, f), (d, b), (a, f), (c, d)`
 
 `possible output: f, e, a, b, d, c`
 */

extension Graph where Data: Hashable {
    
    init(projects: [Data], projectDependencies: [(project: Data, dependency: Data)]) {
        var connectedNodes = [Data: [Data]]()
        for dep in projectDependencies {
            var dependencies = connectedNodes[dep.project] ?? [Data]()
            dependencies.append(dep.dependency)
            connectedNodes[dep.project] = dependencies
        }
        let unconnectedNoes = Array(Set(projects).subtracting(connectedNodes.keys))
        self.init(connectedNodes: connectedNodes, unconnectedNodes: unconnectedNoes)
    }
    
    func buildOrder(projects: [Data]) -> [Data]? {
        
    }
}

extension GraphNode {
    
    var dfsPath: [GraphNode] {
        
    }
    
    var dfsPathAcyclic: [GraphNode]? {
        
    }
    
    private func dfsPathAcyclic(visitedNodes: Set<GraphNode<Data>>) -> [GraphNode]? {
        
    }
    
    var containsCycleDFS: Bool {
        
    }
    
    private func containsCycleDFS(visitedNodes: Set<GraphNode<Data>>) -> Bool {
        
    }
}


var projects = ["a", "b", "c", "d", "e", "f"]
var dependencies: [(project: String, dependency: String)] = [("d", "a"), ("b", "f"), ("d", "b"), ("a", "f"), ("c", "d")]
var projectGraph = Graph(projects: projects, projectDependencies: dependencies)
var buildOrder = projectGraph.buildOrder(projects: projects)
assert(buildOrder! == ["f", "a", "b", "d", "c", "e"])


projects = ["a", "b"]
dependencies = [("b", "a"), ("a", "b")]
projectGraph = Graph(projects: projects, projectDependencies: dependencies)
buildOrder = projectGraph.buildOrder(projects: projects)
assert(buildOrder == nil)
