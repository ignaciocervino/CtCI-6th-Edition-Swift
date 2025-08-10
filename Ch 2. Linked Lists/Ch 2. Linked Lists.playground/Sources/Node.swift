//
//  Node.swift
//  
//
//  Created by Ignacio Cervino on 09/08/2025.
//

//public class LinkedList<Value> where Value: Hashable {
//    public var head: Node<Value>?
//    public var tail: Node<Value>?
//
//    public init(head: Node<Value>?, tail: Node<Value>? = nil) {
//        self.head = head
//        if let providedTail = tail {
//            self.tail = providedTail
//        } else {
//            var curr = head
//
//            while curr?.next != nil {
//                curr = curr?.next
//            }
//            self.tail = curr
//        }
//    }
//}

public class Node<Value> {
    public var value: Value
    public var next: Node<Value>?

    public init(value: Value, next: Node<Value>? = nil) {
        self.value = value
        self.next = next
    }
}
//
//extension Node: Hashable {
//    public static func == (lhs: Node<Value>, rhs: Node<Value>) -> Bool {
//        lhs === rhs
//    }
//
//    public func hash(into hasher: inout Hasher) {
//        hasher.combine(ObjectIdentifier(self))
//    }
//}
//
//public extension Node {
//    var count: Int {
//        var _count = 1
//        var current = next
//        var visited = Set<Node<Value>>()
//        visited.insert(self)
//
//        while let node = current {
//            if visited.contains(node) {
//                return _count // Stop at cycle
//            }
//            visited.insert(node)
//            _count += 1
//            current = node.next
//        }
//        return _count
//    }
//
//    func at(index: Int) -> Node<Value>? {
//        guard index >= 0 else { return nil }
//        var current: Node<Value>? = self
//        for _ in 0 ..< index {
//            current = current?.next
//        }
//        return current
//    }
//
//    func reversed() -> Node<Value>? {
//        var result: Node<Value>?
//        var curr: Node<Value>? = self
//
//        while curr != nil {
//            result = Node(value: curr!.value, next: result)
//            curr = curr?.next
//        }
//
//        return result
//    }
//
//    static func equals (_ lhs: Node<Value>, _ rhs: Node<Value>) -> Bool where Value: Equatable {
//        var p1: Node<Value>? = lhs
//        var p2: Node<Value>? = rhs
//
//        while let n1 = p1, let n2 = p2 {
//            if n1.value != n2.value {
//                return false
//            }
//            p1 = p1?.next
//            p2 = p2?.next
//        }
//
//        return true
//    }
//}
//
//public extension LinkedList {
//    var count: Int {
//        head?.count ?? 0
//    }
//
//    var last: Node<Value>? {
//        return tail
//    }
//
//    func at(index: Int) -> Node<Value>? {
//        guard index >= 0 else { return nil }
//        var current = head
//        var _count = 0
//        while let node = current {
//            if _count == index {
//                return node
//            }
//            current = node.next
//            _count += 1
//        }
//
//        return nil
//    }
//
//    func append(_ node: Node<Value>) {
//        if let tail {
//            tail.next = node
//            self.tail = tail.next
//        } else {
//            head = node
//            tail = node
//        }
//    }
//
//    func prepend(_ node: Node<Value>) {
//        if let head {
//            let lastNode = node.at(index: node.count - 1)
//            lastNode?.next = head
//            self.head = node
//        } else {
//            head = node
//            tail = node.at(index: count - 1)
//        }
//    }
//
//    func insert(at index: Int, value: Value) {
//        if index <= 0 {
//            prepend(Node(value: value))
//            return
//        }
//
//        if index >= count {
//            append(Node(value: value))
//            return
//        }
//
//        guard let prevNode = at(index: index - 1) else { return }
//
//        let newNode = Node(value: value)
//        newNode.next = prevNode.next
//        prevNode.next = newNode
//    }
//
//    func removeFirst() {
//        head = head?.next
//        if head == nil {
//            tail = nil
//        }
//    }
//
//    func remove(at index: Int) {
//        guard index >= 0, index < count else { return }
//        guard index != 0 else {
//            removeFirst()
//            return
//        }
//
//        guard let previous = self.at(index: index - 1) else { return }
//        let nodeToRemove = previous.next
//        previous.next = nodeToRemove?.next
//
//        if nodeToRemove === tail {
//            tail = previous
//        }
//    }
//}

//extension Node: CustomStringConvertible {
//    public var description: String {
//        return "\(value)"
//    }
//}
