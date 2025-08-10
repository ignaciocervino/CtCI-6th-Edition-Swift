import Foundation

//: 2.3 Delete a node in the middle of a singly linked list, given only access to that node

// TODO: Implement deleteMiddleNode function using Node class
// Important: You only have access to the node to be deleted, not the head of the list
// The node to delete is guaranteed to not be the last node in the list
func deleteMiddleNode<T>(_ nodeToDelete: Node<T>) -> Bool {
    return false
}

// Helper function to create linked list from array and return both head and specific node
func createLinkedListWithNodeRef<T>(_ values: [T], nodeIndex: Int) -> (head: Node<T>?, nodeToDelete: Node<T>?) {
    guard !values.isEmpty, nodeIndex >= 0, nodeIndex < values.count else { return (nil, nil) }
    
    let head = Node(value: values[0])
    var current = head
    var nodeToDelete: Node<T>? = nodeIndex == 0 ? head : nil
    
    for i in 1..<values.count {
        current.next = Node(value: values[i])
        current = current.next!
        if i == nodeIndex {
            nodeToDelete = current
        }
    }
    return (head, nodeToDelete)
}

// MARK: - Tests

// Test case 1: Delete middle node
func testDeleteMiddleNodeBasic() -> Bool {
    let values = ["a", "b", "c", "d", "e"]
    let (head, nodeToDelete) = createLinkedListWithNodeRef(values, nodeIndex: 2) // Delete "c"
    
    guard let nodeToDelete = nodeToDelete else {
        print("Test 1 - Delete middle node: ❌ FAILED")
        print("Failed to get node reference")
        print()
        return false
    }
    
    let success = deleteMiddleNode(nodeToDelete)
    let result = listToArray(head)
    let expectedResult = ["a", "b", "d", "e"]
    let passed = success && result == expectedResult
    
    print("Test 1 - Delete middle node: \(passed ? "✅ PASSED" : "❌ FAILED")")
    print("Original: \(values)")
    print("Deleting node at index 2 (value: 'c')")
    print("Result: \(result)")
    print("Expected: \(expectedResult)")
    print("Success returned: \(success)")
    print()
    
    return passed
}

// Test case 2: Delete first middle node in longer list
func testDeleteMiddleNodeFirst() -> Bool {
    let values = [1, 2, 3, 4, 5, 6, 7]
    let (head, nodeToDelete) = createLinkedListWithNodeRef(values, nodeIndex: 1) // Delete 2
    
    guard let nodeToDelete = nodeToDelete else {
        print("Test 2 - Delete first middle node: ❌ FAILED")
        print("Failed to get node reference")
        print()
        return false
    }
    
    let success = deleteMiddleNode(nodeToDelete)
    let result = listToArray(head)
    let expectedResult = [1, 3, 4, 5, 6, 7]
    let passed = success && result == expectedResult
    
    print("Test 2 - Delete first middle node: \(passed ? "✅ PASSED" : "❌ FAILED")")
    print("Original: \(values)")
    print("Deleting node at index 1 (value: 2)")
    print("Result: \(result)")
    print("Expected: \(expectedResult)")
    print("Success returned: \(success)")
    print()
    
    return passed
}

// Test case 3: Delete second to last node (still valid middle node)
func testDeleteMiddleNodeSecondToLast() -> Bool {
    let values = [10, 20, 30, 40, 50]
    let (head, nodeToDelete) = createLinkedListWithNodeRef(values, nodeIndex: 3) // Delete 40
    
    guard let nodeToDelete = nodeToDelete else {
        print("Test 3 - Delete second to last node: ❌ FAILED")
        print("Failed to get node reference")
        print()
        return false
    }
    
    let success = deleteMiddleNode(nodeToDelete)
    let result = listToArray(head)
    let expectedResult = [10, 20, 30, 50]
    let passed = success && result == expectedResult
    
    print("Test 3 - Delete second to last node: \(passed ? "✅ PASSED" : "❌ FAILED")")
    print("Original: \(values)")
    print("Deleting node at index 3 (value: 40)")
    print("Result: \(result)")
    print("Expected: \(expectedResult)")
    print("Success returned: \(success)")
    print()
    
    return passed
}

// Test case 4: Cannot delete last node (should return false)
func testDeleteLastNode() -> Bool {
    let values = [1, 2, 3]
    let (head, nodeToDelete) = createLinkedListWithNodeRef(values, nodeIndex: 2) // Try to delete last node
    
    guard let nodeToDelete = nodeToDelete else {
        print("Test 4 - Try to delete last node: ❌ FAILED")
        print("Failed to get node reference")
        print()
        return false
    }
    
    let success = deleteMiddleNode(nodeToDelete)
    let result = listToArray(head)
    // Should return false and not modify the list
    let passed = !success
    
    print("Test 4 - Try to delete last node (should fail): \(passed ? "✅ PASSED" : "❌ FAILED")")
    print("Original: \(values)")
    print("Trying to delete last node at index 2 (value: 3)")
    print("Result: \(result)")
    print("Success returned: \(success) (expected: false)")
    print("Note: Cannot delete last node with this approach")
    print()
    
    return passed
}

// Test case 5: Single element in middle of larger list
func testDeleteSingleMiddle() -> Bool {
    let values = ["x", "y", "z"]
    let (head, nodeToDelete) = createLinkedListWithNodeRef(values, nodeIndex: 1) // Delete "y"
    
    guard let nodeToDelete = nodeToDelete else {
        print("Test 5 - Delete single middle element: ❌ FAILED")
        print("Failed to get node reference")
        print()
        return false
    }
    
    let success = deleteMiddleNode(nodeToDelete)
    let result = listToArray(head)
    let expectedResult = ["x", "z"]
    let passed = success && result == expectedResult
    
    print("Test 5 - Delete single middle element: \(passed ? "✅ PASSED" : "❌ FAILED")")
    print("Original: \(values)")
    print("Deleting node at index 1 (value: 'y')")
    print("Result: \(result)")
    print("Expected: \(expectedResult)")
    print("Success returned: \(success)")
    print()
    
    return passed
}

// Run all tests
func runAllDeleteMiddleNodeTests() {
    print("=== 2.3 Delete Middle Node Tests ===\n")
    
    let results = [
        testDeleteMiddleNodeBasic(),
        testDeleteMiddleNodeFirst(),
        testDeleteMiddleNodeSecondToLast(),
        testDeleteLastNode(),
        testDeleteSingleMiddle()
    ]
    
    let passedCount = results.filter { $0 }.count
    let totalCount = results.count
    let allPassed = passedCount == totalCount
    
    print("=== SUMMARY ===")
    print("Tests passed: \(passedCount)/\(totalCount)")
    print("\(allPassed ? "✅ ALL TESTS PASSED!" : "❌ SOME TESTS FAILED")")
    
    if !allPassed {
        print("Failed tests:")
        let testNames = ["Delete middle node basic", "Delete first middle node", "Delete second to last node", "Try to delete last node", "Delete single middle element"]
        for (index, result) in results.enumerated() {
            if !result {
                print("  - Test \(index + 1): \(testNames[index])")
            }
        }
    }
}

// Run the tests
runAllDeleteMiddleNodeTests()

