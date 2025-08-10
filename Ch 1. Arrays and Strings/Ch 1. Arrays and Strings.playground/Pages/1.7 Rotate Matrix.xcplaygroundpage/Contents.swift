/*:
 1.7 Rotate an NxN matrix 90 degrees clockwise
 */

func rotatedMatrix<T>(_ matrix: [[T]]) -> [[T]] {
    // Your solution here
    return []
}

// Alternative: implement as extension
extension Array where Element: RandomAccessCollection, Element.Element: Any {
    func rotated() -> [[Element.Element]] {
        // Your solution here
        return []
    }
}

// Tests
let matrix = [[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12], [13, 14, 15, 16]]
let expected = [[13, 9, 5, 1], [14, 10, 6, 2], [15, 11, 7, 3], [16, 12, 8, 4]]
let rotated = rotatedMatrix(matrix)

let test1 = rotated.elementsEqual(expected, by: { $0.elementsEqual($1, by: ==) })

let matrix2x2 = [[1, 2], [3, 4]]
let expected2x2 = [[3, 1], [4, 2]]
let rotated2x2 = rotatedMatrix(matrix2x2)
let test2 = rotated2x2.elementsEqual(expected2x2, by: { $0.elementsEqual($1, by: ==) })

print(test1 ? "✅" : "❌", "Test 1")
print(test2 ? "✅" : "❌", "Test 2")

let allPassed = test1 && test2
print("\n" + (allPassed ? "✅ ALL TESTS PASSED" : "❌ SOME TESTS FAILED"))
