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

// Tests
let originalMatrix = [[1, 2, 3, 4],  [5, 0, 7, 8],  [9, 10, 0, 12],  [13, 14, 15, 16]]
let expected = [[1, 0, 0, 4],  [0, 0, 0, 0],  [0, 0, 0, 0],  [13, 0, 0, 16]]

let zeroed = zeroedMatrix(originalMatrix)
let test1 = zeroed.elementsEqual(expected, by: { $0.elementsEqual($1, by: ==) })

var copy = originalMatrix
zeroedMatrixInPlace(&copy)
let test2 = copy.elementsEqual(expected, by: { $0.elementsEqual($1, by: ==) })

let matrixNoZeros = [[1, 2], [3, 4]]
let resultNoZeros = zeroedMatrix(matrixNoZeros)
let test3 = resultNoZeros.elementsEqual(matrixNoZeros, by: { $0.elementsEqual($1, by: ==) })

print(test1 ? "✅" : "❌", "Test 1")
print(test2 ? "✅" : "❌", "Test 2")
print(test3 ? "✅" : "❌", "Test 3")

let allPassed = test1 && test2 && test3
print("\n" + (allPassed ? "✅ ALL TESTS PASSED" : "❌ SOME TESTS FAILED"))
