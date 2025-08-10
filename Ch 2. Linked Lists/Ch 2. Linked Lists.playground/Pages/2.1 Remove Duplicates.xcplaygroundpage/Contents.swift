import Foundation

//: 2.1 Remove duplicates from an unsorted singly linked list

// TODO: Implement removeDuplicates function using Node class
// Should remove duplicate values from unsorted linked list using a buffer (Set)
// 1 -> 2 -> 2 -> 4
func removeDuplicates<T: Hashable>(_ head: Node<T>?) -> Node<T>? {
    return nil
}

// TODO: Implement removeDuplicatesWithoutBuffer function using Node class  
// Should remove duplicate values without using additional data structures
func removeDuplicatesWithoutBuffer<T: Equatable>(_ head: Node<T>?) -> Node<T>? {
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

// Test case 1: Basic duplicate removal with buffer
func testRemoveDuplicatesWithBuffer() {
    let values = [1, 2, 3, 2, 4, 1, 5]
    let head = createLinkedList(values)
    let result = removeDuplicates(head)
    let resultArray = linkedListToArray(result)
    print("Test 1 - Remove duplicates with buffer:")
    print("Input: \(values)")
    print("Expected: [1, 2, 3, 4, 5] (order may vary)")
    print("Result: \(resultArray)")
    print("Passed: \(Set(resultArray) == Set([1, 2, 3, 4, 5]) && resultArray.count == 5)")
    print()
}

// Test case 2: Basic duplicate removal without buffer
func testRemoveDuplicatesWithoutBuffer() {
    let values = [1, 2, 3, 2, 4, 1, 5]
    let head = createLinkedList(values)
    let result = removeDuplicatesWithoutBuffer(head)
    let resultArray = linkedListToArray(result)
    print("Test 2 - Remove duplicates without buffer:")
    print("Input: \(values)")
    print("Expected: [1, 2, 3, 4, 5] (order may vary)")
    print("Result: \(resultArray)")
    print("Passed: \(Set(resultArray) == Set([1, 2, 3, 4, 5]) && resultArray.count == 5)")
    print()
}

// Test case 3: No duplicates
func testNoDuplicates() {
    let values = [1, 2, 3, 4, 5]
    let head = createLinkedList(values)
    let result1 = removeDuplicates(head)
    let result2 = removeDuplicatesWithoutBuffer(createLinkedList(values))
    print("Test 3 - No duplicates:")
    print("Input: \(values)")
    print("Result with buffer: \(linkedListToArray(result1))")
    print("Result without buffer: \(linkedListToArray(result2))")
    print()
}

// Test case 4: All duplicates
func testAllDuplicates() {
    let values = [1, 1, 1, 1, 1]
    let head = createLinkedList(values)
    let result1 = removeDuplicates(head)
    let result2 = removeDuplicatesWithoutBuffer(createLinkedList(values))
    print("Test 4 - All duplicates:")
    print("Input: \(values)")
    print("Result with buffer: \(linkedListToArray(result1))")
    print("Result without buffer: \(linkedListToArray(result2))")
    print()
}

// Test case 5: Empty list
func testEmptyList() {
    let values = [Int]()
    let head = createLinkedList(values)
    let result1 = removeDuplicates(head)
    let result2 = removeDuplicatesWithoutBuffer(head)
    print("Test 5 - Empty list:")
    print("Result with buffer: \(result1 == nil ? "nil" : "not nil")")
    print("Result without buffer: \(result2 == nil ? "nil" : "not nil")")
    print()
}

// Run all tests
print("=== 2.1 Remove Duplicates Tests ===")
testRemoveDuplicatesWithBuffer()
testRemoveDuplicatesWithoutBuffer()
testNoDuplicates()
testAllDuplicates()
testEmptyList()

