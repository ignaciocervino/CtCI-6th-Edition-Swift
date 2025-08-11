/*:
 1.8 Transform an MxN matrix such that if an element is 0, its entire row and column are zeroed
 */
func zeroedMatrix(_ matrix: [[Int]]) -> [[Int]] {
    // Your solution here
    return []
}

func zeroedMatrixInPlace(_ matrix: inout [[Int]]) {
    // Your solution here - modify the matrix in place
}

// MARK: - Tests

func printMatrix(_ matrix: [[Int]], title: String = "") {
    if !title.isEmpty { print(title) }
    for row in matrix {
        print(row.map { String(format: "%2d", $0) }.joined(separator: " "))
    }
    print()
}

// Test matrices
let matrix1 = [
    [1, 2, 3, 4],
    [5, 0, 7, 8],
    [9, 10, 0, 12],
    [13, 14, 15, 16]
]

let expected1 = [
    [1, 0, 0, 4],
    [0, 0, 0, 0],
    [0, 0, 0, 0],
    [13, 0, 0, 16]
]

let matrix2 = [[1, 2], [3, 4]]  // No zeros
let expected2 = [[1, 2], [3, 4]]

let matrix3 = [[0]]  // Single zero
let expected3 = [[0]]

let matrix4 = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
]
let expected4 = [
    [0, 0, 0],
    [0, 4, 5],
    [0, 7, 8]
]

let matrix5 = [
    [1, 0],
    [0, 1]
]
let expected5 = [
    [0, 0],
    [0, 0]
]

let matrix6: [[Int]] = []  // Empty matrix
let expected6: [[Int]] = []

let matrix7 = [
    [1, 2, 3],
    [4, 0, 6],
    [7, 8, 9]
]
let expected7 = [
    [1, 0, 3],
    [0, 0, 0],
    [7, 0, 9]
]

// Helper function for matrix comparison
func matricesEqual(_ m1: [[Int]], _ m2: [[Int]]) -> Bool {
    return m1.elementsEqual(m2, by: { $0.elementsEqual($1) })
}

// Test the regular function
let test1 = matricesEqual(zeroedMatrix(matrix1), expected1)
let test2 = matricesEqual(zeroedMatrix(matrix2), expected2)
let test3 = matricesEqual(zeroedMatrix(matrix3), expected3)
let test4 = matricesEqual(zeroedMatrix(matrix4), expected4)
let test5 = matricesEqual(zeroedMatrix(matrix5), expected5)
let test6 = matricesEqual(zeroedMatrix(matrix6), expected6)
let test7 = matricesEqual(zeroedMatrix(matrix7), expected7)

// Test the in-place function
var copy1 = matrix1; zeroedMatrixInPlace(&copy1)
var copy2 = matrix2; zeroedMatrixInPlace(&copy2)
var copy3 = matrix3; zeroedMatrixInPlace(&copy3)
var copy4 = matrix4; zeroedMatrixInPlace(&copy4)
var copy5 = matrix5; zeroedMatrixInPlace(&copy5)
var copy6 = matrix6; zeroedMatrixInPlace(&copy6)
var copy7 = matrix7; zeroedMatrixInPlace(&copy7)

let testInPlace1 = matricesEqual(copy1, expected1)
let testInPlace2 = matricesEqual(copy2, expected2)
let testInPlace3 = matricesEqual(copy3, expected3)
let testInPlace4 = matricesEqual(copy4, expected4)
let testInPlace5 = matricesEqual(copy5, expected5)
let testInPlace6 = matricesEqual(copy6, expected6)
let testInPlace7 = matricesEqual(copy7, expected7)

print("--- Regular Function Tests ---")
print(test1 ? "✅ PASS" : "❌ FAIL", "- Test 1 (4x4 with zeros)")
print(test2 ? "✅ PASS" : "❌ FAIL", "- Test 2 (2x2 no zeros)")
print(test3 ? "✅ PASS" : "❌ FAIL", "- Test 3 (1x1 single zero)")
print(test4 ? "✅ PASS" : "❌ FAIL", "- Test 4 (3x3 zero at [0,0])")
print(test5 ? "✅ PASS" : "❌ FAIL", "- Test 5 (2x2 diagonal zeros)")
print(test6 ? "✅ PASS" : "❌ FAIL", "- Test 6 (empty matrix)")
print(test7 ? "✅ PASS" : "❌ FAIL", "- Test 7 (3x3 middle zero)")

print("\n--- In-Place Function Tests ---")
print(testInPlace1 ? "✅ PASS" : "❌ FAIL", "- InPlace 1 (4x4 with zeros)")
print(testInPlace2 ? "✅ PASS" : "❌ FAIL", "- InPlace 2 (2x2 no zeros)")
print(testInPlace3 ? "✅ PASS" : "❌ FAIL", "- InPlace 3 (1x1 single zero)")
print(testInPlace4 ? "✅ PASS" : "❌ FAIL", "- InPlace 4 (3x3 zero at [0,0])")
print(testInPlace5 ? "✅ PASS" : "❌ FAIL", "- InPlace 5 (2x2 diagonal zeros)")
print(testInPlace6 ? "✅ PASS" : "❌ FAIL", "- InPlace 6 (empty matrix)")
print(testInPlace7 ? "✅ PASS" : "❌ FAIL", "- InPlace 7 (3x3 middle zero)")

let allRegularPassed = test1 && test2 && test3 && test4 && test5 && test6 && test7
let allInPlacePassed = testInPlace1 && testInPlace2 && testInPlace3 && testInPlace4 && testInPlace5 && testInPlace6 && testInPlace7

print("\n" + (allRegularPassed ? "🎉 REGULAR METHOD: ALL TESTS PASSED" : "❌ REGULAR METHOD: SOME TESTS FAILED"))
print(allInPlacePassed ? "🎉 IN-PLACE METHOD: ALL TESTS PASSED" : "❌ IN-PLACE METHOD: SOME TESTS FAILED")

// Visual demonstration
print("\n--- Visual Example ---")
printMatrix(matrix1, title: "Original Matrix:")
printMatrix(zeroedMatrix(matrix1), title: "After Zeroing:")

print("--- Algorithm Notes ---")
print("Regular approach: O(m*n) time, O(m+n) space")
print("In-place approach: O(m*n) time, O(1) space")
print("Key insight for in-place: Use first row/column as flags!")
