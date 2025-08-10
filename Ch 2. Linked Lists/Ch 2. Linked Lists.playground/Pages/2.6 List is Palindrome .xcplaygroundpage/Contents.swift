import Foundation

/*:
 2.6
 Write a function that returns whether or not a singly linked list is a palindrome
 */

// TODO: Implement isPalindrome function using Node class
func isPalindrome<T: Equatable>(_ head: Node<T>?) -> Bool {
    return false
}

// MARK: - Tests

// Test case 1: Basic palindrome (odd length)
func testPalindromeOddLength() -> Bool {
    let values = Array("tacocat") // ["t", "a", "c", "o", "c", "a", "t"]
    let head = createLinkedList(values)
    let result = isPalindrome(head)
    
    let passed = result == true
    
    print("Test 1 - Palindrome odd length: \(passed ? "✅ PASSED" : "❌ FAILED")")
    print("Input: \(values)")
    print("Result: \(result)")
    print("Expected: true")
    print()
    
    return passed
}

// Test case 2: Basic palindrome (even length)
func testPalindromeEvenLength() -> Bool {
    let values = [1, 2, 3, 3, 2, 1]
    let head = createLinkedList(values)
    let result = isPalindrome(head)
    
    let passed = result == true
    
    print("Test 2 - Palindrome even length: \(passed ? "✅ PASSED" : "❌ FAILED")")
    print("Input: \(values)")
    print("Result: \(result)")
    print("Expected: true")
    print()
    
    return passed
}

// Test case 3: Not a palindrome
func testNotPalindrome() -> Bool {
    let values = [1, 2, 3, 4, 5]
    let head = createLinkedList(values)
    let result = isPalindrome(head)
    
    let passed = result == false
    
    print("Test 3 - Not a palindrome: \(passed ? "✅ PASSED" : "❌ FAILED")")
    print("Input: \(values)")
    print("Result: \(result)")
    print("Expected: false")
    print()
    
    return passed
}

// Test case 4: Single element
func testPalindromeSingleElement() -> Bool {
    let values = ["a"]
    let head = createLinkedList(values)
    let result = isPalindrome(head)
    
    let passed = result == true
    
    print("Test 4 - Single element: \(passed ? "✅ PASSED" : "❌ FAILED")")
    print("Input: \(values)")
    print("Result: \(result)")
    print("Expected: true")
    print()
    
    return passed
}

// Test case 5: Two elements (palindrome)
func testPalindromeTwoElements() -> Bool {
    let values = ["a", "a"]
    let head = createLinkedList(values)
    let result = isPalindrome(head)
    
    let passed = result == true
    
    print("Test 5 - Two identical elements: \(passed ? "✅ PASSED" : "❌ FAILED")")
    print("Input: \(values)")
    print("Result: \(result)")
    print("Expected: true")
    print()
    
    return passed
}

// Test case 6: Two elements (not palindrome)
func testNotPalindromeTwoElements() -> Bool {
    let values = ["a", "b"]
    let head = createLinkedList(values)
    let result = isPalindrome(head)
    
    let passed = result == false
    
    print("Test 6 - Two different elements: \(passed ? "✅ PASSED" : "❌ FAILED")")
    print("Input: \(values)")
    print("Result: \(result)")
    print("Expected: false")
    print()
    
    return passed
}

// Test case 7: Empty list
func testPalindromeEmpty() -> Bool {
    let node: Node<Int>? = nil
    let result = isPalindrome(node)
    
    let passed = result == true

    print("Test 7 - Empty list: \(passed ? "✅ PASSED" : "❌ FAILED")")
    print("Input: []")
    print("Result: \(result)")
    print("Expected: true (empty list is considered palindrome)")
    print()
    
    return passed
}

// Test case 8: Long palindrome
func testPalindromeLong() -> Bool {
    let values = [1, 2, 3, 4, 5, 4, 3, 2, 1]
    let head = createLinkedList(values)
    let result = isPalindrome(head)
    
    let passed = result == true
    
    print("Test 8 - Long palindrome: \(passed ? "✅ PASSED" : "❌ FAILED")")
    print("Input: \(values)")
    print("Result: \(result)")
    print("Expected: true")
    print()
    
    return passed
}

// Run all tests
func runAllPalindromeTests() {
    print("=== 2.6 Palindrome Tests ===\n")
    
    let results = [
        testPalindromeOddLength(),
        testPalindromeEvenLength(),
        testNotPalindrome(),
        testPalindromeSingleElement(),
        testPalindromeTwoElements(),
        testNotPalindromeTwoElements(),
        testPalindromeEmpty(),
        testPalindromeLong()
    ]
    
    let passedCount = results.filter { $0 }.count
    let totalCount = results.count
    let allPassed = passedCount == totalCount
    
    print("=== SUMMARY ===")
    print("Tests passed: \(passedCount)/\(totalCount)")
    print("\(allPassed ? "✅ ALL TESTS PASSED!" : "❌ SOME TESTS FAILED")")
    
    if !allPassed {
        print("Failed tests:")
        let testNames = ["Palindrome odd length", "Palindrome even length", "Not a palindrome", "Single element", "Two identical elements", "Two different elements", "Empty list", "Long palindrome"]
        for (index, result) in results.enumerated() {
            if !result {
                print("  - Test \(index + 1): \(testNames[index])")
            }
        }
    }
}

// Run the tests
runAllPalindromeTests()
