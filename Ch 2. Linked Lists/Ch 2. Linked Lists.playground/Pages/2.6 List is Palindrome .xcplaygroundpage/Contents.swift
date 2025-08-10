import Foundation

/*:
 2.6
 Write a function that returns whether or not a singly linked list is a palindrome
 */

// TODO: Implement isPalindrome function using Node class
func isPalindrome<T: Equatable>(_ head: Node<T>?) -> Bool {
    // Your implementation here
    return false
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

// Test case 1: Basic palindrome (odd length)
func testPalindromeOddLength() {
    let values = Array("tacocat") // ["t", "a", "c", "o", "c", "a", "t"]
    let head = createLinkedList(values)
    let result = isPalindrome(head)
    
    print("Test 1 - Palindrome odd length:")
    print("Input: \(values)")
    print("Result: \(result)")
    print("Expected: true")
    print("Passed: \(result == true)")
    print()
}

// Test case 2: Basic palindrome (even length)
func testPalindromeEvenLength() {
    let values = [1, 2, 3, 3, 2, 1]
    let head = createLinkedList(values)
    let result = isPalindrome(head)
    
    print("Test 2 - Palindrome even length:")
    print("Input: \(values)")
    print("Result: \(result)")
    print("Expected: true")
    print("Passed: \(result == true)")
    print()
}

// Test case 3: Not a palindrome
func testNotPalindrome() {
    let values = [1, 2, 3, 4, 5]
    let head = createLinkedList(values)
    let result = isPalindrome(head)
    
    print("Test 3 - Not a palindrome:")
    print("Input: \(values)")
    print("Result: \(result)")
    print("Expected: false")
    print("Passed: \(result == false)")
    print()
}

// Test case 4: Single element
func testPalindromeSingleElement() {
    let values = ["a"]
    let head = createLinkedList(values)
    let result = isPalindrome(head)
    
    print("Test 4 - Single element:")
    print("Input: \(values)")
    print("Result: \(result)")
    print("Expected: true")
    print("Passed: \(result == true)")
    print()
}

// Test case 5: Two elements (palindrome)
func testPalindromeTwoElements() {
    let values = ["a", "a"]
    let head = createLinkedList(values)
    let result = isPalindrome(head)
    
    print("Test 5 - Two identical elements:")
    print("Input: \(values)")
    print("Result: \(result)")
    print("Expected: true")
    print("Passed: \(result == true)")
    print()
}

// Test case 6: Two elements (not palindrome)
func testNotPalindromeTwoElements() {
    let values = ["a", "b"]
    let head = createLinkedList(values)
    let result = isPalindrome(head)
    
    print("Test 6 - Two different elements:")
    print("Input: \(values)")
    print("Result: \(result)")
    print("Expected: false")
    print("Passed: \(result == false)")
    print()
}

// Test case 7: Empty list
func testPalindromeEmpty() {
    let result = isPalindrome(nil)
    
    print("Test 7 - Empty list:")
    print("Input: []")
    print("Result: \(result)")
    print("Expected: true (empty list is considered palindrome)")
    print("Passed: \(result == true)")
    print()
}

// Test case 8: Long palindrome
func testPalindromeLong() {
    let values = [1, 2, 3, 4, 5, 4, 3, 2, 1]
    let head = createLinkedList(values)
    let result = isPalindrome(head)
    
    print("Test 8 - Long palindrome:")
    print("Input: \(values)")
    print("Result: \(result)")
    print("Expected: true")
    print("Passed: \(result == true)")
    print()
}

// Run all tests
print("=== 2.6 Palindrome Tests ===")
testPalindromeOddLength()
testPalindromeEvenLength()
testNotPalindrome()
testPalindromeSingleElement()
testPalindromeTwoElements()
testNotPalindromeTwoElements()
testPalindromeEmpty()
testPalindromeLong()
