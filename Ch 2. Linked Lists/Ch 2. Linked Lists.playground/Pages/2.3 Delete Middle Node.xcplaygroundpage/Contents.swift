import Foundation

//: 2.3 Delete a node in the middle of a singly linked list, given only access to that node

// TODO: Implement deleteMiddleNode function using Node class
// Important: You only have access to the node to be deleted, not the head of the list
// The node to delete is guaranteed to not be the last node in the list
func deleteMiddleNode<T>(_ nodeToDelete: Node<T>) -> Bool {
    // Your implementation here
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

// Helper function to convert linked list to array for comparison
func linkedListToArray<T>(_ head: Node<T>?) -> [T] {
    var result: [T] = []
    var current = head
    
    while let node = current {
        result.append(node.value)
        current = node.next
    }
    return result
}

// Test case 1: Delete middle node
func testDeleteMiddleNodeBasic() {
    let values = ["a", "b", "c", "d", "e"]
    let (head, nodeToDelete) = createLinkedListWithNodeRef(values, nodeIndex: 2) // Delete "c"
    
    print("Test 1 - Delete middle node:")
    print("Original: \(values)")
    print("Deleting node at index 2 (value: 'c')")
    
    guard let nodeToDelete = nodeToDelete else {
        print("Failed to get node reference")
        return
    }
    
    let success = deleteMiddleNode(nodeToDelete)
    let result = linkedListToArray(head)
    
    print("Result: \(result)")
    print("Expected: [\"a\", \"b\", \"d\", \"e\"]")
    print("Success returned: \(success)")
    print("Passed: \(success && result == ["a", "b", "d", "e"])")
    print()
}

// Test case 2: Delete first middle node in longer list
func testDeleteMiddleNodeFirst() {
    let values = [1, 2, 3, 4, 5, 6, 7]
    let (head, nodeToDelete) = createLinkedListWithNodeRef(values, nodeIndex: 1) // Delete 2
    
    print("Test 2 - Delete first middle node:")
    print("Original: \(values)")
    print("Deleting node at index 1 (value: 2)")
    
    guard let nodeToDelete = nodeToDelete else {
        print("Failed to get node reference")
        return
    }
    
    let success = deleteMiddleNode(nodeToDelete)
    let result = linkedListToArray(head)
    
    print("Result: \(result)")
    print("Expected: [1, 3, 4, 5, 6, 7]")
    print("Success returned: \(success)")
    print("Passed: \(success && result == [1, 3, 4, 5, 6, 7])")
    print()
}

// Test case 3: Delete second to last node (still valid middle node)
func testDeleteMiddleNodeSecondToLast() {
    let values = [10, 20, 30, 40, 50]
    let (head, nodeToDelete) = createLinkedListWithNodeRef(values, nodeIndex: 3) // Delete 40
    
    print("Test 3 - Delete second to last node:")
    print("Original: \(values)")
    print("Deleting node at index 3 (value: 40)")
    
    guard let nodeToDelete = nodeToDelete else {
        print("Failed to get node reference")
        return
    }
    
    let success = deleteMiddleNode(nodeToDelete)
    let result = linkedListToArray(head)
    
    print("Result: \(result)")
    print("Expected: [10, 20, 30, 50]")
    print("Success returned: \(success)")
    print("Passed: \(success && result == [10, 20, 30, 50])")
    print()
}

// Test case 4: Cannot delete last node (should return false or handle gracefully)
func testDeleteLastNode() {
    let values = [1, 2, 3]
    let (head, nodeToDelete) = createLinkedListWithNodeRef(values, nodeIndex: 2) // Try to delete last node
    
    print("Test 4 - Try to delete last node (should fail):")
    print("Original: \(values)")
    print("Trying to delete last node at index 2 (value: 3)")
    
    guard let nodeToDelete = nodeToDelete else {
        print("Failed to get node reference")
        return
    }
    
    let success = deleteMiddleNode(nodeToDelete)
    let result = linkedListToArray(head)
    
    print("Result: \(result)")
    print("Success returned: \(success)")
    print("Note: This should return false since we can't delete the last node with this approach")
    print()
}

// Test case 5: Single element in middle of larger list
func testDeleteSingleMiddle() {
    let values = ["x", "y", "z"]
    let (head, nodeToDelete) = createLinkedListWithNodeRef(values, nodeIndex: 1) // Delete "y"
    
    print("Test 5 - Delete single middle element:")
    print("Original: \(values)")
    print("Deleting node at index 1 (value: 'y')")
    
    guard let nodeToDelete = nodeToDelete else {
        print("Failed to get node reference")
        return
    }
    
    let success = deleteMiddleNode(nodeToDelete)
    let result = linkedListToArray(head)
    
    print("Result: \(result)")
    print("Expected: [\"x\", \"z\"]")
    print("Success returned: \(success)")
    print("Passed: \(success && result == ["x", "z"])")
    print()
}

// Run all tests
print("=== 2.3 Delete Middle Node Tests ===")
testDeleteMiddleNodeBasic()
testDeleteMiddleNodeFirst()
testDeleteMiddleNodeSecondToLast()
testDeleteLastNode()
testDeleteSingleMiddle()

