/*:
 1.8 Tranform an MxN matrix such that if an element is 0 its column and row are zeroed
 */

func zeroedMatrix(_ matrix: [[Int]]) -> [[Int]] {
    
}

func zeroedMatrixInPlace(_ matrix: inout [[Int]]) {
    
}

func zeroColumns(col: Int, matrix: inout [[Int]]) {
    
}

func testZeroMatrix() {
    // Test cases for zeroedMatrix() and zeroedMatrixInPlace()
    
    // Basic case with zeros
    let matrix1 = [[1, 2, 3, 4],  [5, 0, 7, 8],  [9, 10, 0, 12],  [13, 14, 15, 16]]
    let zeroed1 = zeroedMatrix(matrix1)
    let expected1 = [[1, 0, 0, 4],  [0, 0, 0, 0],  [0, 0, 0, 0],  [13, 0, 0, 16]]
    assert(zeroed1.elementsEqual(expected1, by: ==), "Basic zero matrix should work")
    
    // Test in-place version
    var copy1 = matrix1
    zeroedMatrixInPlace(&copy1)
    assert(copy1.elementsEqual(expected1, by: ==), "In-place zero matrix should work")
    
    // Matrix with no zeros
    let matrix2 = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    let zeroed2 = zeroedMatrix(matrix2)
    let expected2 = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    assert(zeroed2.elementsEqual(expected2, by: ==), "Matrix with no zeros should remain unchanged")
    
    // Matrix with single zero
    let matrix3 = [[1, 2], [3, 0]]
    let zeroed3 = zeroedMatrix(matrix3)
    let expected3 = [[1, 0], [0, 0]]
    assert(zeroed3.elementsEqual(expected3, by: ==), "Single zero should affect row and column")
    
    // Matrix with zero in corner
    let matrix4 = [[0, 2, 3], [4, 5, 6], [7, 8, 9]]
    let zeroed4 = zeroedMatrix(matrix4)
    let expected4 = [[0, 0, 0], [0, 5, 6], [0, 8, 9]]
    assert(zeroed4.elementsEqual(expected4, by: ==), "Zero in corner should work")
    
    // 1x1 matrix with zero
    let matrix5 = [[0]]
    let zeroed5 = zeroedMatrix(matrix5)
    let expected5 = [[0]]
    assert(zeroed5.elementsEqual(expected5, by: ==), "1x1 matrix with zero should work")
    
    // 1x1 matrix without zero
    let matrix6 = [[5]]
    let zeroed6 = zeroedMatrix(matrix6)
    let expected6 = [[5]]
    assert(zeroed6.elementsEqual(expected6, by: ==), "1x1 matrix without zero should remain unchanged")
    
    // Multiple zeros in same row and column
    let matrix7 = [[0, 2, 0], [4, 5, 6], [7, 0, 9]]
    let zeroed7 = zeroedMatrix(matrix7)
    let expected7 = [[0, 0, 0], [0, 0, 0], [0, 0, 0]]
    assert(zeroed7.elementsEqual(expected7, by: ==), "Multiple zeros should create full zero matrix")
    
    // Rectangular matrix
    let matrix8 = [[1, 2, 3, 4, 5], [6, 0, 8, 9, 10], [11, 12, 13, 14, 15]]
    let zeroed8 = zeroedMatrix(matrix8)
    let expected8 = [[1, 0, 3, 4, 5], [0, 0, 0, 0, 0], [11, 0, 13, 14, 15]]
    assert(zeroed8.elementsEqual(expected8, by: ==), "Rectangular matrix should work")
    
    print("✅ All Zero Matrix tests passed!")
}

let matrix = [[1, 2, 3, 4],  [5, 0, 7, 8],  [9, 10, 0, 12],  [13, 14, 15, 16]]
let zeroed = zeroedMatrix(matrix)
let verify = [[1, 0, 0, 4],  [0, 0, 0, 0],  [0, 0, 0, 0],  [13, 0, 0, 16]]

assert(zeroed.elementsEqual(verify, by: ==))
print(zeroed)

var copy = matrix
zeroedMatrixInPlace(&copy)
assert(copy.elementsEqual(verify, by: ==))

testZeroMatrix()
