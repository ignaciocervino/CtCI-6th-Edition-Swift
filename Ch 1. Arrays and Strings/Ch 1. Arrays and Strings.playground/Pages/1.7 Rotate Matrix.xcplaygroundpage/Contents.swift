/*:
 1.7 Rotate an NxN matrix 90 degrees clockwise
 */

func rotatedMatrix(_ matrix: [[Int]]) -> [[Int]] {
    // Your solution here
    return []
}

// MARK: - Tests

// Helper function to print matrix nicely for debugging
func printMatrix(_ matrix: [[Int]], title: String = "") {
    if !title.isEmpty { print(title) }
    for row in matrix {
        print(row.map { String(format: "%2d", $0) }.joined(separator: " "))
    }
    print()
}

// Test matrices
let matrix1x1 = [[5]]
let matrix2x2 = [
    [1, 2],
    [3, 4]
]
let matrix3x3 = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
]
let matrix4x4 = [
    [ 1,  2,  3,  4],
    [ 5,  6,  7,  8],
    [ 9, 10, 11, 12],
    [13, 14, 15, 16]
]
let matrix5x5 = [
    [ 1,  2,  3,  4,  5],
    [ 6,  7,  8,  9, 10],
    [11, 12, 13, 14, 15],
    [16, 17, 18, 19, 20],
    [21, 22, 23, 24, 25]
]

// Expected results after 90° clockwise rotation
let expected1x1 = [[5]]
let expected2x2 = [
    [3, 1],
    [4, 2]
]
let expected3x3 = [
    [7, 4, 1],
    [8, 5, 2],
    [9, 6, 3]
]
let expected4x4 = [
    [13,  9,  5,  1],
    [14, 10,  6,  2],
    [15, 11,  7,  3],
    [16, 12,  8,  4]
]
let expected5x5 = [
    [21, 16, 11,  6,  1],
    [22, 17, 12,  7,  2],
    [23, 18, 13,  8,  3],
    [24, 19, 14,  9,  4],
    [25, 20, 15, 10,  5]
]

// Run tests
let test1 = rotatedMatrix(matrix1x1) == expected1x1
let test2 = rotatedMatrix(matrix2x2) == expected2x2
let test3 = rotatedMatrix(matrix3x3) == expected3x3
let test4 = rotatedMatrix(matrix4x4) == expected4x4
let test5 = rotatedMatrix(matrix5x5) == expected5x5
let test6 = rotatedMatrix([]) == []  // Empty matrix

print(test1 ? "✅ PASS" : "❌ FAIL", "- Test 1 (1x1 matrix)")
print(test2 ? "✅ PASS" : "❌ FAIL", "- Test 2 (2x2 matrix)")
print(test3 ? "✅ PASS" : "❌ FAIL", "- Test 3 (3x3 matrix)")
print(test4 ? "✅ PASS" : "❌ FAIL", "- Test 4 (4x4 matrix)")
print(test5 ? "✅ PASS" : "❌ FAIL", "- Test 5 (5x5 matrix)")
print(test6 ? "✅ PASS" : "❌ FAIL", "- Test 6 (empty matrix)")

let allPassed = test1 && test2 && test3 && test4 && test5 && test6
print("\n" + (allPassed ? "🎉 ALL TESTS PASSED" : "❌ SOME TESTS FAILED"))

// Visual demonstration for 3x3
print("\n--- Visual Example (3x3) ---")
printMatrix(matrix3x3, title: "Original:")
printMatrix(rotatedMatrix(matrix3x3), title: "Rotated 90° Clockwise:")

print("--- Rotation Pattern ---")
print("Original[i][j] -> Rotated[j][n-1-i]")
print("(0,0) -> (0,2)  |  (0,1) -> (1,2)  |  (0,2) -> (2,2)")
print("(1,0) -> (0,1)  |  (1,1) -> (1,1)  |  (1,2) -> (2,1)")
print("(2,0) -> (0,0)  |  (2,1) -> (1,0)  |  (2,2) -> (2,0)")

print("\n--- Algorithm Notes ---")
print("Time complexity: O(n²) - must visit every element")
print("Space complexity: O(n²) - creates new matrix")
print("For in-place rotation: transpose + reverse each row")
