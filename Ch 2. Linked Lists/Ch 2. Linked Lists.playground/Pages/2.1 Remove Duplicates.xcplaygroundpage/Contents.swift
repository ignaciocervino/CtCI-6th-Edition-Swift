import Foundation

//: 2.1 Remove duplicates from an unsorted singly linked list

// TODO: Implement removeDuplicates function using Node class
// Should remove duplicate values from unsorted linked list using a buffer (Set)
func removeDuplicates<T: Hashable>(_ head: Node<T>?) -> Node<T>? {
    return nil
}

// TODO: Implement removeDuplicatesWithoutBuffer function using Node class  
// Should remove duplicate values without using additional data structures
func removeDuplicatesWithoutBuffer<T: Equatable>(_ head: Node<T>?) -> Node<T>? {
    // Your implementation here
    return nil
}

// MARK: - Tests

// Test case 1: Basic duplicate removal with buffer
func testRemoveDuplicatesWithBuffer() -> Bool {
    let values = [1, 2, 3, 2, 4, 1, 5]
    let head = createLinkedList(values)
    let result = removeDuplicates(head)
    let resultArray = listToArray(result)
    let expectedElements = Set([1, 2, 3, 4, 5])
    let passed = Set(resultArray) == expectedElements && resultArray.count == 5
    
    print("Test 1 - Remove duplicates with buffer: \(passed ? "✅ PASSED" : "❌ FAILED")")
    print("Input: \(values)")
    print("Expected: [1, 2, 3, 4, 5] (order may vary)")
    print("Result: \(resultArray)")
    print("Same elements: \(Set(resultArray) == expectedElements)")
    print("Correct count: \(resultArray.count == 5)")
    print()
    
    return passed
}

// Test case 2: Basic duplicate removal without buffer
func testRemoveDuplicatesWithoutBuffer() -> Bool {
    let values = [1, 2, 3, 2, 4, 1, 5]
    let head = createLinkedList(values)
    let result = removeDuplicatesWithoutBuffer(head)
    let resultArray = listToArray(result)
    let expectedElements = Set([1, 2, 3, 4, 5])
    let passed = Set(resultArray) == expectedElements && resultArray.count == 5
    
    print("Test 2 - Remove duplicates without buffer: \(passed ? "✅ PASSED" : "❌ FAILED")")
    print("Input: \(values)")
    print("Expected: [1, 2, 3, 4, 5] (order may vary)")
    print("Result: \(resultArray)")
    print("Same elements: \(Set(resultArray) == expectedElements)")
    print("Correct count: \(resultArray.count == 5)")
    print()
    
    return passed
}

// Test case 3: No duplicates
func testNoDuplicates() -> Bool {
    let values = [1, 2, 3, 4, 5]
    let result1 = removeDuplicates(createLinkedList(values))
    let result2 = removeDuplicatesWithoutBuffer(createLinkedList(values))
    let resultArray1 = listToArray(result1)
    let resultArray2 = listToArray(result2)
    let passed = resultArray1 == values && resultArray2 == values
    
    print("Test 3 - No duplicates: \(passed ? "✅ PASSED" : "❌ FAILED")")
    print("Input: \(values)")
    print("Result with buffer: \(resultArray1)")
    print("Result without buffer: \(resultArray2)")
    print("Expected: \(values)")
    print()
    
    return passed
}

// Test case 4: All duplicates
func testAllDuplicates() -> Bool {
    let values = [1, 1, 1, 1, 1]
    let result1 = removeDuplicates(createLinkedList(values))
    let result2 = removeDuplicatesWithoutBuffer(createLinkedList(values))
    let resultArray1 = listToArray(result1)
    let resultArray2 = listToArray(result2)
    let passed = resultArray1 == [1] && resultArray2 == [1]
    
    print("Test 4 - All duplicates: \(passed ? "✅ PASSED" : "❌ FAILED")")
    print("Input: \(values)")
    print("Result with buffer: \(resultArray1)")
    print("Result without buffer: \(resultArray2)")
    print("Expected: [1]")
    print()
    
    return passed
}

// Test case 5: Empty list
func testEmptyList() -> Bool {
    let null: Node<Int>? = nil
    let result1 = removeDuplicates(null)
    let result2 = removeDuplicatesWithoutBuffer(null)
    let passed = result1 == nil && result2 == nil
    
    print("Test 5 - Empty list: \(passed ? "✅ PASSED" : "❌ FAILED")")
    print("Input: []")
    print("Result with buffer: \(result1 == nil ? "nil" : "not nil")")
    print("Result without buffer: \(result2 == nil ? "nil" : "not nil")")
    print("Expected: nil")
    print()
    
    return passed
}

// Run all tests
func runAllRemoveDuplicatesTests() {
    print("=== 2.1 Remove Duplicates Tests ===\n")
    
    let results = [
        testRemoveDuplicatesWithBuffer(),
        testRemoveDuplicatesWithoutBuffer(),
        testNoDuplicates(),
        testAllDuplicates(),
        testEmptyList()
    ]
    
    let passedCount = results.filter { $0 }.count
    let totalCount = results.count
    let allPassed = passedCount == totalCount
    
    print("=== SUMMARY ===")
    print("Tests passed: \(passedCount)/\(totalCount)")
    print("\(allPassed ? "✅ ALL TESTS PASSED!" : "❌ SOME TESTS FAILED")")
    
    if !allPassed {
        print("Failed tests:")
        let testNames = ["Remove duplicates with buffer", "Remove duplicates without buffer", "No duplicates", "All duplicates", "Empty list"]
        for (index, result) in results.enumerated() {
            if !result {
                print("  - Test \(index + 1): \(testNames[index])")
            }
        }
    }
}

// Run the tests
runAllRemoveDuplicatesTests()

