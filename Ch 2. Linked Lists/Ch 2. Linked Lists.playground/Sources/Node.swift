//
//  Node.swift
//  
//
//  Created by Ignacio Cervino on 09/08/2025.
//

public class LinkedList<Value> {
    public var head: Node<Value>?
    public var tail: Node<Value>?

    init(head: Node<Value>?, tail: Node<Value>? = nil) {
        self.head = head
        self.tail = tail ?? head
    }
}

public class Node<Value> {
    public var value: Value
    public var next: Node?

    public init(value: Value, next: Node? = nil) {
        self.value = value
        self.next = next
    }
}

public extension Node {
    var count: Int {
        return 1 + (next?.count ?? 0)
    }

    func at(index: Int) -> Node<Value>? {
        guard index >= 0 else { return nil }
        var current: Node<Value>? = self
        for _ in 0 ..< index {
            current = current?.next
        }
        return current
    }
}

public extension LinkedList {
    var count: Int {
        head?.count ?? 0
    }

    var last: Node<Value>? {
        return tail
    }

    func at(index: Int) -> Node<Value>? {
        guard index >= 0 else { return nil }
        var current = head
        var _count = 0
        while let node = current {
            if _count == index {
                return node
            }
            current = node.next
            _count += 1
        }

        return nil
    }

    func append(_ node: Node<Value>) {
        if let tail {
            tail.next = node
            self.tail = tail.next
        } else {
            head = node
            tail = node
        }
    }

    func prepend(_ node: Node<Value>) {
        if let head {
            let lastNode = node.at(index: node.count - 1)
            lastNode?.next = head
            self.head = node
        } else {
            head = node
            tail = node.at(index: count - 1)
        }
    }

    func insert(at index: Int, value: Value) {
        if index <= 0 {
            prepend(Node(value: value))
            return
        }

        if index >= count {
            append(Node(value: value))
            return
        }

        guard let prevNode = at(index: index - 1) else { return }

        let newNode = Node(value: value)
        newNode.next = prevNode.next
        prevNode.next = newNode
    }

    func removeFirst() {
        head = head?.next
        if head == nil {
            tail = nil
        }
    }

    func remove(at index: Int) {
        guard index >= 0, index < count else { return }
        guard index != 0 else {
            removeFirst()
            return
        }

        guard let previous = self.at(index: index - 1) else { return }
        let nodeToRemove = previous.next
        previous.next = nodeToRemove?.next

        if nodeToRemove === tail {
            tail = previous
        }
    }
}

extension Node: CustomStringConvertible {
    public var description: String {
        guard let next else {
            return "\(value)"
        }
        return "\(value) -> " + String(describing: next) + " "
    }
}
