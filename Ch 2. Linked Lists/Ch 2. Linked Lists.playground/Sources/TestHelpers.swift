import Foundation

// MARK: - Test Helper Functions for LinkedList Problems

// Helper function to get the length of a linked list
public func getListLength<T>(_ head: Node<T>?) -> Int {
    var length = 0
    var current = head
    while current != nil {
        length += 1
        current = current?.next
    }
    return length
}

// Helper function to create a simple linked list
public func createLinkedList<T>(_ values: [T]) -> Node<T>? {
    guard !values.isEmpty else { return nil }
    let head = Node(value: values[0])
    var current = head
    
    for i in 1..<values.count {
        current.next = Node(value: values[i])
        current = current.next!
    }
    return head
}

// Helper function to create two lists that intersect at a specific node
public func createIntersectingLists() -> (listA: Node<Int>?, listB: Node<Int>?, intersection: Node<Int>?) {
    // Create the intersection part: 7 -> 8 -> 9
    let intersection = Node(value: 7)
    intersection.next = Node(value: 8)
    intersection.next?.next = Node(value: 9)
    
    // Create list A: 1 -> 2 -> 3 -> [intersection]
    let listA = Node(value: 1)
    listA.next = Node(value: 2)
    listA.next?.next = Node(value: 3)
    listA.next?.next?.next = intersection
    
    // Create list B: 4 -> 5 -> [intersection]
    let listB = Node(value: 4)
    listB.next = Node(value: 5)
    listB.next?.next = intersection
    
    return (listA, listB, intersection)
}

// Helper function to print a linked list for debugging
public func printList<T>(_ head: Node<T>?, name: String = "List") {
    print("\(name): ", terminator: "")
    var current = head
    var values: [String] = []
    while current != nil {
        values.append("\(current!.value)")
        current = current?.next
    }
    print(values.joined(separator: " -> "))
}

// Helper function to convert linked list to array for easy comparison
public func listToArray<T>(_ head: Node<T>?) -> [T] {
    var result: [T] = []
    var current = head
    while current != nil {
        result.append(current!.value)
        current = current?.next
    }
    return result
}

// Helper function to create a list with a loop for testing cycle detection
public func createListWithLoop() -> Node<Int> {
    let node1 = Node(value: 1)
    let node2 = Node(value: 2)
    let node3 = Node(value: 3)
    let node4 = Node(value: 4)
    let node5 = Node(value: 5)
    
    node1.next = node2
    node2.next = node3
    node3.next = node4
    node4.next = node5
    node5.next = node3  // Creates loop back to node3
    
    return node1
}

// Helper function to create a palindrome linked list
public func createPalindromeList() -> Node<Character> {
    let head = Node<Character>(value: "a")
    head.next = Node<Character>(value: "b")
    head.next?.next = Node<Character>(value: "c")
    head.next?.next?.next = Node<Character>(value: "b")
    head.next?.next?.next?.next = Node<Character>(value: "a")
    return head
}