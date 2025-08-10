import Foundation

//: 2.2 Return kth to last element in a singly linked list

// TODO: Implement kthToLast function using Node class
// Should return the kth to last element (0-indexed from the end)
// Example: For list 1->2->3->4->5, kthToLast(k: 0) returns 5, kthToLast(k: 2) returns 3
func kthToLast<T>(_ head: Node<T>?, k: Int) -> T? {
    // Your implementation here
    return nil
}

// Helper function to create linked list from array
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

// Test case 1: Basic kth to last element
func testKthToLastBasic() {
    let values = [1, 2, 3, 4, 5]
    let head = createLinkedList(values)
    
    print("Test 1 - Basic kth to last:")
    print("List: \(values)")
    
    let test0 = kthToLast(head, k: 0) // Should return 5 (last element)
    let test1 = kthToLast(head, k: 1) // Should return 4 (2nd to last)
    let test2 = kthToLast(head, k: 2) // Should return 3 (3rd to last)
    let test4 = kthToLast(head, k: 4) // Should return 1 (5th to last, first element)
    
    print("kthToLast(k: 0): \(test0 ?? -1) (expected: 5)")
    print("kthToLast(k: 1): \(test1 ?? -1) (expected: 4)")
    print("kthToLast(k: 2): \(test2 ?? -1) (expected: 3)")
    print("kthToLast(k: 4): \(test4 ?? -1) (expected: 1)")
    print("Passed: \(test0 == 5 && test1 == 4 && test2 == 3 && test4 == 1)")
    print()
}

// Test case 2: Out of bounds
func testKthToLastOutOfBounds() {
    let values = [1, 2, 3]
    let head = createLinkedList(values)
    
    print("Test 2 - Out of bounds:")
    print("List: \(values)")
    
    let testNegative = kthToLast(head, k: -1) // Should return nil
    let testTooLarge = kthToLast(head, k: 5) // Should return nil
    
    print("kthToLast(k: -1): \(testNegative == nil ? "nil" : "\(testNegative!)") (expected: nil)")
    print("kthToLast(k: 5): \(testTooLarge == nil ? "nil" : "\(testTooLarge!)") (expected: nil)")
    print("Passed: \(testNegative == nil && testTooLarge == nil)")
    print()
}

// Test case 3: Single element
func testKthToLastSingleElement() {
    let values = [42]
    let head = createLinkedList(values)
    
    print("Test 3 - Single element:")
    print("List: \(values)")
    
    let test0 = kthToLast(head, k: 0) // Should return 42
    let test1 = kthToLast(head, k: 1) // Should return nil
    
    print("kthToLast(k: 0): \(test0 ?? -1) (expected: 42)")
    print("kthToLast(k: 1): \(test1 == nil ? "nil" : "\(test1!)") (expected: nil)")
    print("Passed: \(test0 == 42 && test1 == nil)")
    print()
}

// Test case 4: Empty list
func testKthToLastEmpty() {
    let result = kthToLast(nil, k: 0)
    
    print("Test 4 - Empty list:")
    print("kthToLast(k: 0): \(result == nil ? "nil" : "\(result!)") (expected: nil)")
    print("Passed: \(result == nil)")
    print()
}

// Test case 5: Large list
func testKthToLastLarge() {
    let values = Array(1...100)
    let head = createLinkedList(values)
    
    print("Test 5 - Large list (1 to 100):")
    
    let test0 = kthToLast(head, k: 0) // Should return 100
    let test10 = kthToLast(head, k: 10) // Should return 90
    let test99 = kthToLast(head, k: 99) // Should return 1
    
    print("kthToLast(k: 0): \(test0 ?? -1) (expected: 100)")
    print("kthToLast(k: 10): \(test10 ?? -1) (expected: 90)")
    print("kthToLast(k: 99): \(test99 ?? -1) (expected: 1)")
    print("Passed: \(test0 == 100 && test10 == 90 && test99 == 1)")
    print()
}

// Run all tests
print("=== 2.2 Find Kth to Last Element Tests ===")
testKthToLastBasic()
testKthToLastOutOfBounds()
testKthToLastSingleElement()
testKthToLastEmpty()
testKthToLastLarge()
