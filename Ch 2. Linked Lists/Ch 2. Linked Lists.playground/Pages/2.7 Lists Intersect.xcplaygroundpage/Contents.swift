import Foundation

/*:
 2.7 Determine if two singly linked lists intersect, and return the intersecting node if they do. \
 Intersection is defined by reference not value, i.e. the lists intersect if the ith node of one list is the same by reference as the kth node of the other list.
 */

// TODO: Implement getIntersectionNode function using Node class
// Should return the node where two lists intersect (by reference), or nil if they don't intersect
func getIntersectionNode<T>(_ headA: Node<T>?, _ headB: Node<T>?) -> Node<T>? {
    return nil
}

// MARK: - Tests


// Test case 1: Lists that intersect
func testIntersectingLists() -> Bool {
    let (listA, listB, expectedIntersection) = createIntersectingLists()
    let result = getIntersectionNode(listA, listB)

    let passed = result === expectedIntersection

    print("Test 1 - Intersecting lists: \(passed ? "✅ PASSED" : "❌ FAILED")")
    print("List A: 1 -> 2 -> 3 -> 7 -> 8 -> 9")
    print("List B: 4 -> 5 -> 7 -> 8 -> 9")
    print("Expected intersection at node with value: 7")
    print("Found intersection: \(result?.value ?? -1)")
    print("Correct reference: \(result === expectedIntersection)")
    print()

    return passed
}

// Test case 2: Lists that don't intersect
func testNonIntersectingLists() -> Bool {
    let listA = createLinkedList([1, 2, 3, 4])
    let listB = createLinkedList([5, 6, 7, 8])
    let result = getIntersectionNode(listA, listB)

    let passed = result == nil

    print("Test 2 - Non-intersecting lists: \(passed ? "✅ PASSED" : "❌ FAILED")")
    print("List A: 1 -> 2 -> 3 -> 4")
    print("List B: 5 -> 6 -> 7 -> 8")
    print("Expected intersection: nil")
    print("Result: \(result == nil ? "nil" : "not nil")")
    print("Passed: \(result == nil)")
    print()

    return passed
}

// Test case 3: Same lists (intersect at head)
func testSameLists() -> Bool {
    let listA = createLinkedList([1, 2, 3])
    let result = getIntersectionNode(listA, listA)

    let passed = result === listA

    print("Test 3 - Same lists: \(passed ? "✅ PASSED" : "❌ FAILED")")
    print("Both lists are the same: 1 -> 2 -> 3")
    print("Expected intersection at head (value: 1)")
    print("Found intersection: \(result?.value ?? -1)")
    print("Correct reference: \(result === listA)")
    print()

    return passed
}

// Test case 4: Different length lists that intersect
func testDifferentLengthIntersection() -> Bool {
    // Create intersection part
    let intersection = Node(value: 100)
    intersection.next = Node(value: 200)

    // Create longer list: 1 -> 2 -> 3 -> 4 -> 5 -> [intersection]
    let longList = Node(value: 1)
    var current = longList
    for i in 2...5 {
        current.next = Node(value: i)
        current = current.next!
    }
    current.next = intersection

    // Create shorter list: 10 -> [intersection]
    let shortList = Node(value: 10)
    shortList.next = intersection

    let result = getIntersectionNode(longList, shortList)

    let passed = result === intersection

    print("Test 4 - Different length intersection: \(passed ? "✅ PASSED" : "❌ FAILED")")
    print("Long list: 1 -> 2 -> 3 -> 4 -> 5 -> 100 -> 200")
    print("Short list: 10 -> 100 -> 200")
    print("Expected intersection at node with value: 100")
    print("Found intersection: \(result?.value ?? -1)")
    print("Correct reference: \(result === intersection)")
    print()

    return passed
}

// Test case 5: One empty list
func testOneEmptyList() -> Bool {
    let listA = createLinkedList([1, 2, 3])
    let result = getIntersectionNode(listA, nil)

    let passed = result == nil

    print("Test 5 - One empty list: \(passed ? "✅ PASSED" : "❌ FAILED")")
    print("List A: 1 -> 2 -> 3")
    print("List B: nil")
    print("Expected intersection: nil")
    print("Result: \(result == nil ? "nil" : "not nil")")
    print("Passed: \(result == nil)")
    print()

    return passed
}

// Test case 6: Both empty lists
func testBothEmptyLists() -> Bool {
    let null: Node<Int>? = nil
    let result = getIntersectionNode(null, null)

    let passed = result == nil

    print("Test 6 - Both empty lists: \(passed ? "✅ PASSED" : "❌ FAILED")")
    print("Both lists are nil")
    print("Expected intersection: nil")
    print("Result: \(result == nil ? "nil" : "not nil")")
    print("Passed: \(result == nil)")
    print()

    return passed
}

// Run all tests
func runAllIntersectionTests() {
    print("=== 2.7 Lists Intersect Tests ===\n")

    let results = [
        testIntersectingLists(),
        testNonIntersectingLists(),
        testSameLists(),
        testDifferentLengthIntersection(),
        testOneEmptyList(),
        testBothEmptyLists()
    ]

    let passedCount = results.filter { $0 }.count
    let totalCount = results.count
    let allPassed = passedCount == totalCount

    print("=== SUMMARY ===")
    print("Tests passed: \(passedCount)/\(totalCount)")
    print("\(allPassed ? "✅ ALL TESTS PASSED!" : "❌ SOME TESTS FAILED")")

    if !allPassed {
        print("Failed tests:")
        let testNames = ["Intersecting lists", "Non-intersecting lists", "Same lists", "Different length intersection", "One empty list", "Both empty lists"]
        for (index, result) in results.enumerated() {
            if !result {
                print("  - Test \(index + 1): \(testNames[index])")
            }
        }
    }
}

// Run the tests
runAllIntersectionTests()
