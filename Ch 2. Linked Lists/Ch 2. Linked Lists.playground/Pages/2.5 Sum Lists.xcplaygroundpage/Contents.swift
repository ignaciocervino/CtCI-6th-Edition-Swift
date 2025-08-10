import Foundation

/*:
 2.5
 Two numbers are represented by two singly linked lists in which each node is a digit. 
 The lists have the digits in reverse order, so that the 1's digit is at the head of the list. 
 Sum the two lists and return the result as a list — e.g.:
 
 Input: `7 -> 1 -> 6`  +  `5 -> 9 -> 2, i.e. 617 + 295` \
 Output: `2 -> 1 -> 9,  i.e. 912`
 */

// TODO: Implement sumListsReverse function using Node class
// Digits are stored in reverse order (least significant digit first)
func sumListsReverse(_ list1: Node<Int>?, _ list2: Node<Int>?) -> Node<Int>? {
    return nil
}

// TODO: Implement sumListsForward function using Node class
// Digits are stored in forward order (most significant digit first)
func sumListsForward(_ list1: Node<Int>?, _ list2: Node<Int>?) -> Node<Int>? {
    // Your implementation here
    return nil
}



// MARK: - Tests

// Helper to convert number to digits array (reverse order)
func numberToReversedDigits(_ num: Int) -> [Int] {
    guard num > 0 else { return [0] }
    var digits: [Int] = []
    var n = num
    while n > 0 {
        digits.append(n % 10)
        n /= 10
    }
    return digits
}

// Helper to convert number to digits array (forward order)
func numberToForwardDigits(_ num: Int) -> [Int] {
    return Array(String(num).compactMap { Int(String($0)) })
}

// Helper to convert digits array to number (reverse order)
func reversedDigitsToNumber(_ digits: [Int]) -> Int {
    var result = 0
    var multiplier = 1
    for digit in digits {
        result += digit * multiplier
        multiplier *= 10
    }
    return result
}

// Helper to convert digits array to number (forward order)
func forwardDigitsToNumber(_ digits: [Int]) -> Int {
    var result = 0
    for digit in digits {
        result = result * 10 + digit
    }
    return result
}

// Test case 1: Basic sum with reverse order
func testSumListsReverseBasic() -> Bool {
    // 617 + 295 = 912
    // Stored as: 7->1->6 + 5->9->2 = 2->1->9
    let num1 = 617
    let num2 = 295
    let list1 = createLinkedList(numberToReversedDigits(num1))
    let list2 = createLinkedList(numberToReversedDigits(num2))
    
    let result = sumListsReverse(list1, list2)
    let resultArray = listToArray(result)
    let expectedSum = num1 + num2
    let actualSum = reversedDigitsToNumber(resultArray)
    
    let passed = actualSum == expectedSum
    
    print("Test 1 - Basic sum (reverse order): \(passed ? "✅ PASSED" : "❌ FAILED")")
    print("Number 1: \(num1), List: \(listToArray(list1))")
    print("Number 2: \(num2), List: \(listToArray(list2))")
    print("Result list: \(resultArray)")
    print("Expected sum: \(expectedSum)")
    print("Actual sum: \(actualSum)")
    print()
    
    return passed
}

// Test case 2: Sum with carry
func testSumListsReverseWithCarry() -> Bool {
    // 999 + 1 = 1000
    // Stored as: 9->9->9 + 1 = 0->0->0->1
    let num1 = 999
    let num2 = 1
    let list1 = createLinkedList(numberToReversedDigits(num1))
    let list2 = createLinkedList(numberToReversedDigits(num2))
    
    let result = sumListsReverse(list1, list2)
    let resultArray = listToArray(result)
    let expectedSum = num1 + num2
    let actualSum = reversedDigitsToNumber(resultArray)
    
    let passed = actualSum == expectedSum
    
    print("Test 2 - Sum with carry (reverse order): \(passed ? "✅ PASSED" : "❌ FAILED")")
    print("Number 1: \(num1), List: \(listToArray(list1))")
    print("Number 2: \(num2), List: \(listToArray(list2))")
    print("Result list: \(resultArray)")
    print("Expected sum: \(expectedSum)")
    print("Actual sum: \(actualSum)")
    print()
    
    return passed
}

// Test case 3: Basic sum with forward order
func testSumListsForwardBasic() -> Bool {
    // 617 + 295 = 912
    // Stored as: 6->1->7 + 2->9->5 = 9->1->2
    let num1 = 617
    let num2 = 295
    let list1 = createLinkedList(numberToForwardDigits(num1))
    let list2 = createLinkedList(numberToForwardDigits(num2))
    
    let result = sumListsForward(list1, list2)
    let resultArray = listToArray(result)
    let expectedSum = num1 + num2
    let actualSum = forwardDigitsToNumber(resultArray)
    
    let passed = actualSum == expectedSum
    
    print("Test 3 - Basic sum (forward order): \(passed ? "✅ PASSED" : "❌ FAILED")")
    print("Number 1: \(num1), List: \(listToArray(list1))")
    print("Number 2: \(num2), List: \(listToArray(list2))")
    print("Result list: \(resultArray)")
    print("Expected sum: \(expectedSum)")
    print("Actual sum: \(actualSum)")
    print()
    
    return passed
}

// Test case 4: Different lengths (reverse)
func testSumListsReverseDifferentLengths() -> Bool {
    // 99 + 1 = 100
    // Stored as: 9->9 + 1 = 0->0->1
    let num1 = 99
    let num2 = 1
    let list1 = createLinkedList(numberToReversedDigits(num1))
    let list2 = createLinkedList(numberToReversedDigits(num2))
    
    let result = sumListsReverse(list1, list2)
    let resultArray = listToArray(result)
    let expectedSum = num1 + num2
    let actualSum = reversedDigitsToNumber(resultArray)
    
    let passed = actualSum == expectedSum
    
    print("Test 4 - Different lengths (reverse order): \(passed ? "✅ PASSED" : "❌ FAILED")")
    print("Number 1: \(num1), List: \(listToArray(list1))")
    print("Number 2: \(num2), List: \(listToArray(list2))")
    print("Result list: \(resultArray)")
    print("Expected sum: \(expectedSum)")
    print("Actual sum: \(actualSum)")
    print()
    
    return passed
}

// Test case 5: Different lengths (forward)
func testSumListsForwardDifferentLengths() -> Bool {
    // 1234 + 56 = 1290
    let num1 = 1234
    let num2 = 56
    let list1 = createLinkedList(numberToForwardDigits(num1))
    let list2 = createLinkedList(numberToForwardDigits(num2))
    
    let result = sumListsForward(list1, list2)
    let resultArray = listToArray(result)
    let expectedSum = num1 + num2
    let actualSum = forwardDigitsToNumber(resultArray)
    
    let passed = actualSum == expectedSum
    
    print("Test 5 - Different lengths (forward order): \(passed ? "✅ PASSED" : "❌ FAILED")")
    print("Number 1: \(num1), List: \(listToArray(list1))")
    print("Number 2: \(num2), List: \(listToArray(list2))")
    print("Result list: \(resultArray)")
    print("Expected sum: \(expectedSum)")
    print("Actual sum: \(actualSum)")
    print()
    
    return passed
}

// Test case 6: Zero cases
func testSumListsZero() -> Bool {
    // Test 0 + 5 (reverse)
    let list1 = createLinkedList([0])
    let list2 = createLinkedList([5])
    let result1 = sumListsReverse(list1, list2)
    let result1Array = listToArray(result1)
    
    // Test 0 + 5 (forward)  
    let result2 = sumListsForward(list1, list2)
    let result2Array = listToArray(result2)
    
    // Test empty lists
    let result3 = sumListsReverse(nil, nil)
    
    let passed = result1Array == [5] && result2Array == [5] && result3 == nil
    
    print("Test 6 - Zero cases: \(passed ? "✅ PASSED" : "❌ FAILED")")
    print("0 + 5 (reverse): \(result1Array) (expected: [5])")
    print("0 + 5 (forward): \(result2Array) (expected: [5])")
    print("nil + nil: \(result3 == nil ? "nil" : "not nil") (expected: nil)")
    print()
    
    return passed
}

// MARK: - Tests

// Run all tests
func runAllSumListsTests() {
    print("=== 2.5 Sum Lists Tests ===\n")
    
    let results = [
        testSumListsReverseBasic(),
        testSumListsReverseWithCarry(),
        testSumListsForwardBasic(),
        testSumListsReverseDifferentLengths(),
        testSumListsForwardDifferentLengths(),
        testSumListsZero()
    ]
    
    let passedCount = results.filter { $0 }.count
    let totalCount = results.count
    let allPassed = passedCount == totalCount
    
    print("=== SUMMARY ===")
    print("Tests passed: \(passedCount)/\(totalCount)")
    print("\(allPassed ? "✅ ALL TESTS PASSED!" : "❌ SOME TESTS FAILED")")
    
    if !allPassed {
        print("Failed tests:")
        let testNames = ["Basic sum (reverse)", "Sum with carry (reverse)", "Basic sum (forward)", "Different lengths (reverse)", "Different lengths (forward)", "Zero cases"]
        for (index, result) in results.enumerated() {
            if !result {
                print("  - Test \(index + 1): \(testNames[index])")
            }
        }
    }
}

// Run the tests
runAllSumListsTests()
