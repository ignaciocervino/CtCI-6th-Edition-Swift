import Foundation

/*:
 2.8 Given a singly linked, circular list, return the node at the beginning of the loop.
 
 A circular list is a (corrupt) linked list in which a node's next pointer points to
 an earlier node in the list.
 
 Input: `a -> b -> c -> d -> e -> c`  (The same c as before) \
 Output: `c`
 */

// TODO: Implement detectLoop function using Node class
// Should return the node at the beginning of the loop, or nil if there's no loop
func detectLoop<T>(_ head: Node<T>?) -> Node<T>? {
    return nil
}


// Helper function to create a linked list with a loop
func createLinkedListWithLoop() -> (head: Node<String>?, loopStart: Node<String>?) {
    // Create: a -> b -> c -> d -> e -> c (loop back to c)
    let nodeA = Node(value: "a")
    let nodeB = Node(value: "b")
    let nodeC = Node(value: "c")
    let nodeD = Node(value: "d")
    let nodeE = Node(value: "e")
    
    nodeA.next = nodeB
    nodeB.next = nodeC
    nodeC.next = nodeD
    nodeD.next = nodeE
    nodeE.next = nodeC  // Creates loop back to C
    
    return (nodeA, nodeC)
}

// Helper function to create a linked list with loop at head
func createLinkedListWithLoopAtHead() -> Node<Int>? {
    let head = Node(value: 1)
    let node2 = Node(value: 2)
    let node3 = Node(value: 3)
    
    head.next = node2
    node2.next = node3
    node3.next = head  // Creates loop back to head
    
    return head
}

// Helper to safely traverse list with loop detection for testing
func safeTraverse<T>(_ head: Node<T>?, maxSteps: Int = 20) -> [T] {
    var result: [T] = []
    var current = head
    var steps = 0
    
    while let node = current, steps < maxSteps {
        result.append(node.value)
        current = node.next
        steps += 1
    }
    
    return result
}

// MARK: - Tests

// Test case 1: List with loop
func testLoopDetection() -> Bool {
    let (head, expectedLoopStart) = createLinkedListWithLoop()
    let result = detectLoop(head)

    let passed = result === expectedLoopStart

    print("Test 1 - Loop detection: \(passed ? "✅ PASSED" : "❌ FAILED")")
    print("List structure: a -> b -> c -> d -> e -> c (loops back to c)")
    print("Expected loop start: c")
    print("Found loop start: \(result?.value ?? "nil")")
    print("Correct reference: \(result === expectedLoopStart)")
    print()
    
    return passed
}

// Test case 2: List without loop
func testNoLoop() -> Bool {
    let head = createLinkedList(["a", "b", "c", "d", "e"])
    let result = detectLoop(head)

    let passed = result == nil

    print("Test 2 - No loop: \(passed ? "✅ PASSED" : "❌ FAILED")")
    print("List: a -> b -> c -> d -> e")
    print("Expected: nil")
    print("Result: \(result?.value ?? "nil")")
    print()
    
    return passed
}

// Test case 3: Loop at head
func testLoopAtHead() -> Bool {
    let head = createLinkedListWithLoopAtHead()
    let result = detectLoop(head)

    let passed = result === head

    print("Test 3 - Loop at head: \(passed ? "✅ PASSED" : "❌ FAILED")")
    print("List structure: 1 -> 2 -> 3 -> 1 (loops back to head)")
    print("Expected loop start: 1")
    print("Found loop start: \(result?.value ?? -1)")
    print("Correct reference: \(result === head)")
    print()
    
    return passed
}

// Test case 4: Single node loop
func testSingleNodeLoop() -> Bool {
    let head = Node(value: "self")
    head.next = head  // Points to itself
    let result = detectLoop(head)

    let passed = result === head

    print("Test 4 - Single node loop: \(passed ? "✅ PASSED" : "❌ FAILED")")
    print("List structure: self -> self")
    print("Expected loop start: self")
    print("Found loop start: \(result?.value ?? "nil")")
    print("Correct reference: \(result === head)")
    print()
    
    return passed
}

// Test case 5: Two node loop
func testTwoNodeLoop() -> Bool {
    let node1 = Node(value: 1)
    let node2 = Node(value: 2)
    node1.next = node2
    node2.next = node1  // Creates loop between 1 and 2

    let result = detectLoop(node1)

    let passed = result === node1

    print("Test 5 - Two node loop: \(passed ? "✅ PASSED" : "❌ FAILED")")
    print("List structure: 1 -> 2 -> 1")
    print("Expected loop start: 1")
    print("Found loop start: \(result?.value ?? -1)")
    print("Correct reference: \(result === node1)")
    print()
    
    return passed
}

// Test case 6: Empty list
func testEmptyList() -> Bool {
    let null: Node<String>? = nil
    let result = detectLoop(null)

    let passed = result == nil

    print("Test 6 - Empty list: \(passed ? "✅ PASSED" : "❌ FAILED")")
    print("List: nil")
    print("Expected: nil")
    print("Result: \(result == nil ? "nil" : "not nil")")
    print()
    
    return passed
}

// Test case 7: Single node without loop
func testSingleNodeNoLoop() -> Bool {
    let head = Node(value: "single")
    let result = detectLoop(head)

    let passed = result == nil

    print("Test 7 - Single node no loop: \(passed ? "✅ PASSED" : "❌ FAILED")")
    print("List: single")
    print("Expected: nil")
    print("Result: \(result == nil ? "nil" : "not nil")")
    print()
    
    return passed
}

// Run all tests
func runAllLoopDetectionTests() {
    print("=== 2.8 Loop Detection Tests ===\n")
    
    let results = [
        testLoopDetection(),
        testNoLoop(),
        testLoopAtHead(),
        testSingleNodeLoop(),
        testTwoNodeLoop(),
        testEmptyList(),
        testSingleNodeNoLoop()
    ]
    
    let passedCount = results.filter { $0 }.count
    let totalCount = results.count
    let allPassed = passedCount == totalCount
    
    print("=== SUMMARY ===")
    print("Tests passed: \(passedCount)/\(totalCount)")
    print("\(allPassed ? "✅ ALL TESTS PASSED!" : "❌ SOME TESTS FAILED")")
    
    if !allPassed {
        print("Failed tests:")
        let testNames = ["Loop detection", "No loop", "Loop at head", "Single node loop", "Two node loop", "Empty list", "Single node no loop"]
        for (index, result) in results.enumerated() {
            if !result {
                print("  - Test \(index + 1): \(testNames[index])")
            }
        }
    }
}

// Run all tests
runAllLoopDetectionTests()
