import Foundation

/*:
 2.7 Determine if two singly linked lists intersect, and return the intersecting node if they do. \
 Intersection is defined by reference not value, i.e. the lists intersect if the ith node of one list is the same by reference as the kth node of the other list.
 */

// TODO: Implement getIntersectionNode function using Node class
// Should return the node where two lists intersect (by reference), or nil if they don't intersect
func getIntersectionNode<T>(_ headA: Node<T>?, _ headB: Node<T>?) -> Node<T>? {
    // Your implementation here
    return nil
}

// Helper function to get the length of a linked list
func getListLength<T>(_ head: Node<T>?) -> Int {
    var length = 0
    var current = head
    while current != nil {
        length += 1
        current = current?.next
    }
    return length
}

// Helper function to create a simple linked list
func createLinkedList<T>(_ values: [T]) -> Node<T>? {
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
func createIntersectingLists() -> (listA: Node<Int>?, listB: Node<Int>?, intersection: Node<Int>?) {
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

// Test case 1: Lists that intersect
func testIntersectingLists() {
    let (listA, listB, expectedIntersection) = createIntersectingLists()
    let result = getIntersectionNode(listA, listB)
    
    print("Test 1 - Intersecting lists:")
    print("List A: 1 -> 2 -> 3 -> 7 -> 8 -> 9")
    print("List B: 4 -> 5 -> 7 -> 8 -> 9")
    print("Expected intersection at node with value: 7")
    print("Found intersection: \(result?.value ?? -1)")
    print("Correct reference: \(result === expectedIntersection)")
    print()
}

// Test case 2: Lists that don't intersect
func testNonIntersectingLists() {
    let listA = createLinkedList([1, 2, 3, 4])
    let listB = createLinkedList([5, 6, 7, 8])
    let result = getIntersectionNode(listA, listB)
    
    print("Test 2 - Non-intersecting lists:")
    print("List A: 1 -> 2 -> 3 -> 4")
    print("List B: 5 -> 6 -> 7 -> 8")
    print("Expected intersection: nil")
    print("Result: \(result == nil ? "nil" : "not nil")")
    print("Passed: \(result == nil)")
    print()
}

// Test case 3: Same lists (intersect at head)
func testSameLists() {
    let listA = createLinkedList([1, 2, 3])
    let result = getIntersectionNode(listA, listA)
    
    print("Test 3 - Same lists:")
    print("Both lists are the same: 1 -> 2 -> 3")
    print("Expected intersection at head (value: 1)")
    print("Found intersection: \(result?.value ?? -1)")
    print("Correct reference: \(result === listA)")
    print()
}

// Test case 4: Different length lists that intersect
func testDifferentLengthIntersection() {
    // Create intersection part
    let intersection = Node(value: 100)
    intersection.next = Node(value: 200)
    
    // Create longer list: 1 -> 2 -> 3 -> 4 -> 5 -> [intersection]
    let longList = Node(value: 1)
    var current = longList
    for i in 2...5 {
        current.next = Node(value: i)
        current = current.next!
    }
    current.next = intersection
    
    // Create shorter list: 10 -> [intersection]
    let shortList = Node(value: 10)
    shortList.next = intersection
    
    let result = getIntersectionNode(longList, shortList)
    
    print("Test 4 - Different length intersection:")
    print("Long list: 1 -> 2 -> 3 -> 4 -> 5 -> 100 -> 200")
    print("Short list: 10 -> 100 -> 200")
    print("Expected intersection at node with value: 100")
    print("Found intersection: \(result?.value ?? -1)")
    print("Correct reference: \(result === intersection)")
    print()
}

// Test case 5: One empty list
func testOneEmptyList() {
    let listA = createLinkedList([1, 2, 3])
    let result = getIntersectionNode(listA, nil)
    
    print("Test 5 - One empty list:")
    print("List A: 1 -> 2 -> 3")
    print("List B: nil")
    print("Expected intersection: nil")
    print("Result: \(result == nil ? "nil" : "not nil")")
    print("Passed: \(result == nil)")
    print()
}

// Test case 6: Both empty lists
func testBothEmptyLists() {
    let result = getIntersectionNode(nil, nil)
    
    print("Test 6 - Both empty lists:")
    print("Both lists are nil")
    print("Expected intersection: nil")
    print("Result: \(result == nil ? "nil" : "not nil")")
    print("Passed: \(result == nil)")
    print()
}

// Run all tests
print("=== 2.7 Lists Intersect Tests ===")
testIntersectingLists()
testNonIntersectingLists()
testSameLists()
testDifferentLengthIntersection()
testOneEmptyList()
testBothEmptyLists()
