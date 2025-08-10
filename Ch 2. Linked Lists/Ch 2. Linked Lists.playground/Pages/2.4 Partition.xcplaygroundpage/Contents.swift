import Foundation

/*: 
 2.4 Partition a singly linked list around a value `x`, such that all nodes `< x` come before all nodes `>= x`.
    
 If x is contained in the list, x only needs to be after the elements less than x.
 The partition element can appear anywhere in the "right partition"; it does not need to appear between the left and right partitions — e.g.:
 
 Input:    `3 -> 5 -> 8 -> 5 -> 10 -> 2 -> 1`  (partition = 5) \
 Output: `3 -> 1 -> 2 -> 10 -> 5 -> 5 -> 8`

*/

// TODO: Implement partition function using Node class
// Should partition the linked list around value x
func partition<T: Comparable>(_ head: Node<T>?, around x: T) -> Node<T>? {
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

// Helper function to check if partition is valid
func isValidPartition<T: Comparable>(_ values: [T], partitionValue: T) -> Bool {
    var foundGreaterOrEqual = false
    for value in values {
        if value >= partitionValue {
            foundGreaterOrEqual = true
        } else if foundGreaterOrEqual {
            // Found a value < partition after seeing a value >= partition
            return false
        }
    }
    return true
}

// Test case 1: Basic partition
func testPartitionBasic() {
    let values = [3, 5, 8, 5, 10, 2, 1]
    let head = createLinkedList(values)
    let partitioned = partition(head, around: 5)
    let result = linkedListToArray(partitioned)
    
    print("Test 1 - Basic partition:")
    print("Input: \(values)")
    print("Partition around: 5")
    print("Result: \(result)")
    print("Valid partition: \(isValidPartition(result, partitionValue: 5))")
    print("Same elements: \(Set(result) == Set(values) && result.count == values.count)")
    print()
}

// Test case 2: All elements smaller than partition
func testPartitionAllSmaller() {
    let values = [1, 2, 3, 4]
    let head = createLinkedList(values)
    let partitioned = partition(head, around: 5)
    let result = linkedListToArray(partitioned)
    
    print("Test 2 - All elements smaller:")
    print("Input: \(values)")
    print("Partition around: 5")
    print("Result: \(result)")
    print("Valid partition: \(isValidPartition(result, partitionValue: 5))")
    print("Same elements: \(Set(result) == Set(values) && result.count == values.count)")
    print()
}

// Test case 3: All elements larger than partition
func testPartitionAllLarger() {
    let values = [6, 7, 8, 9]
    let head = createLinkedList(values)
    let partitioned = partition(head, around: 5)
    let result = linkedListToArray(partitioned)
    
    print("Test 3 - All elements larger:")
    print("Input: \(values)")
    print("Partition around: 5")
    print("Result: \(result)")
    print("Valid partition: \(isValidPartition(result, partitionValue: 5))")
    print("Same elements: \(Set(result) == Set(values) && result.count == values.count)")
    print()
}

// Test case 4: Equal elements
func testPartitionEqual() {
    let values = [5, 5, 5, 5]
    let head = createLinkedList(values)
    let partitioned = partition(head, around: 5)
    let result = linkedListToArray(partitioned)
    
    print("Test 4 - All elements equal to partition:")
    print("Input: \(values)")
    print("Partition around: 5")
    print("Result: \(result)")
    print("Valid partition: \(isValidPartition(result, partitionValue: 5))")
    print("Same elements: \(Set(result) == Set(values) && result.count == values.count)")
    print()
}

// Test case 5: Single element
func testPartitionSingle() {
    let values = [7]
    let head = createLinkedList(values)
    let partitioned = partition(head, around: 5)
    let result = linkedListToArray(partitioned)
    
    print("Test 5 - Single element:")
    print("Input: \(values)")
    print("Partition around: 5")
    print("Result: \(result)")
    print("Valid partition: \(isValidPartition(result, partitionValue: 5))")
    print("Same elements: \(Set(result) == Set(values) && result.count == values.count)")
    print()
}

// Test case 6: Empty list
func testPartitionEmpty() {
    let partitioned = partition(nil, around: 5)
    let result = linkedListToArray(partitioned)
    
    print("Test 6 - Empty list:")
    print("Input: []")
    print("Partition around: 5")
    print("Result: \(result)")
    print("Is empty: \(result.isEmpty)")
    print()
}

// Run all tests
print("=== 2.4 Partition Tests ===")
testPartitionBasic()
testPartitionAllSmaller()
testPartitionAllLarger()
testPartitionEqual()
testPartitionSingle()
testPartitionEmpty()
