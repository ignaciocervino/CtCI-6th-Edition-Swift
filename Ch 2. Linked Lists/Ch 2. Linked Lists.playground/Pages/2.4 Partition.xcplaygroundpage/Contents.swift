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
    return nil
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

// MARK: - Tests

// Test case 1: Basic partition
func testPartitionBasic() -> Bool {
    let values = [3, 5, 8, 5, 10, 2, 1]
    let head = createLinkedList(values)
    let partitioned = partition(head, around: 5)
    let result = listToArray(partitioned)

    let validPartition = isValidPartition(result, partitionValue: 5)
    let sameElements = Set(result) == Set(values) && result.count == values.count
    let passed = validPartition && sameElements

    print("Test 1 - Basic partition: \(passed ? "✅ PASSED" : "❌ FAILED")")
    print("Input: \(values)")
    print("Partition around: 5")
    print("Result: \(result)")
    print("Valid partition: \(validPartition)")
    print("Same elements: \(sameElements)")
    print()
    
    return passed
}

// Test case 2: All elements smaller than partition
func testPartitionAllSmaller() -> Bool {
    let values = [1, 2, 3, 4]
    let head = createLinkedList(values)
    let partitioned = partition(head, around: 5)
    let result = listToArray(partitioned)

    let validPartition = isValidPartition(result, partitionValue: 5)
    let sameElements = Set(result) == Set(values) && result.count == values.count
    let passed = validPartition && sameElements

    print("Test 2 - All elements smaller: \(passed ? "✅ PASSED" : "❌ FAILED")")
    print("Input: \(values)")
    print("Partition around: 5")
    print("Result: \(result)")
    print("Valid partition: \(validPartition)")
    print("Same elements: \(sameElements)")
    print()
    
    return passed
}

// Test case 3: All elements larger than partition
func testPartitionAllLarger() -> Bool {
    let values = [6, 7, 8, 9]
    let head = createLinkedList(values)
    let partitioned = partition(head, around: 5)
    let result = listToArray(partitioned)

    let validPartition = isValidPartition(result, partitionValue: 5)
    let sameElements = Set(result) == Set(values) && result.count == values.count
    let passed = validPartition && sameElements

    print("Test 3 - All elements larger: \(passed ? "✅ PASSED" : "❌ FAILED")")
    print("Input: \(values)")
    print("Partition around: 5")
    print("Result: \(result)")
    print("Valid partition: \(validPartition)")
    print("Same elements: \(sameElements)")
    print()
    
    return passed
}

// Test case 4: Equal elements
func testPartitionEqual() -> Bool {
    let values = [5, 5, 5, 5]
    let head = createLinkedList(values)
    let partitioned = partition(head, around: 5)
    let result = listToArray(partitioned)

    let validPartition = isValidPartition(result, partitionValue: 5)
    let sameElements = Set(result) == Set(values) && result.count == values.count
    let passed = validPartition && sameElements

    print("Test 4 - All elements equal to partition: \(passed ? "✅ PASSED" : "❌ FAILED")")
    print("Input: \(values)")
    print("Partition around: 5")
    print("Result: \(result)")
    print("Valid partition: \(validPartition)")
    print("Same elements: \(sameElements)")
    print()
    
    return passed
}

// Test case 5: Single element
func testPartitionSingle() -> Bool {
    let values = [7]
    let head = createLinkedList(values)
    let partitioned = partition(head, around: 5)
    let result = listToArray(partitioned)

    let validPartition = isValidPartition(result, partitionValue: 5)
    let sameElements = Set(result) == Set(values) && result.count == values.count
    let passed = validPartition && sameElements

    print("Test 5 - Single element: \(passed ? "✅ PASSED" : "❌ FAILED")")
    print("Input: \(values)")
    print("Partition around: 5")
    print("Result: \(result)")
    print("Valid partition: \(validPartition)")
    print("Same elements: \(sameElements)")
    print()
    
    return passed
}

// Test case 6: Empty list
func testPartitionEmpty() -> Bool {
    let partitioned = partition(nil, around: 5)
    let result = listToArray(partitioned)
    let passed = result.isEmpty

    print("Test 6 - Empty list: \(passed ? "✅ PASSED" : "❌ FAILED")")
    print("Input: []")
    print("Partition around: 5")
    print("Result: \(result)")
    print("Is empty: \(result.isEmpty)")
    print()
    
    return passed
}

// Run all tests
func runAllPartitionTests() {
    print("=== 2.4 Partition Tests ===\n")
    
    let results = [
        testPartitionBasic(),
        testPartitionAllSmaller(),
        testPartitionAllLarger(),
        testPartitionEqual(),
        testPartitionSingle(),
        testPartitionEmpty()
    ]
    
    let passedCount = results.filter { $0 }.count
    let totalCount = results.count
    let allPassed = passedCount == totalCount
    
    print("=== SUMMARY ===")
    print("Tests passed: \(passedCount)/\(totalCount)")
    print("\(allPassed ? "✅ ALL TESTS PASSED!" : "❌ SOME TESTS FAILED")")
    
    if !allPassed {
        print("Failed tests:")
        let testNames = ["Basic partition", "All elements smaller", "All elements larger", "All elements equal", "Single element", "Empty list"]
        for (index, result) in results.enumerated() {
            if !result {
                print("  - Test \(index + 1): \(testNames[index])")
            }
        }
    }
}

// Run the tests
runAllPartitionTests()
