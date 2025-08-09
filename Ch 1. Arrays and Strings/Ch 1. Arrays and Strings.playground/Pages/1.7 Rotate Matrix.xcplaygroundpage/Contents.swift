/*:
 1.7 Rotate an NxN matrix
 */

func rotateMatrix(_ matrix: [[Int]]) -> [[Int]] {
    
}

func rotateMatrixInPlace(_ matrix: inout [[Int]]) {
    
}

func testRotateMatrix() {
    // Test cases for rotateMatrix() and rotateMatrixInPlace()
    
    // 4x4 matrix
    let matrix4x4 = [[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12], [13, 14, 15, 16]]
    let rotated4x4 = rotateMatrix(matrix4x4)
    let expected4x4 = [[13, 9, 5, 1], [14, 10, 6, 2], [15, 11, 7, 3], [16, 12, 8, 4]]
    assert(rotated4x4.elementsEqual(expected4x4) { $0 == $1 }, "4x4 matrix rotation should work")
    
    // Test in-place version
    var copy4x4 = matrix4x4
    rotateMatrixInPlace(&copy4x4)
    assert(copy4x4.elementsEqual(expected4x4) { $0 == $1 }, "4x4 matrix in-place rotation should work")
    
    // 3x3 matrix
    let matrix3x3 = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    let rotated3x3 = rotateMatrix(matrix3x3)
    let expected3x3 = [[7, 4, 1], [8, 5, 2], [9, 6, 3]]
    assert(rotated3x3.elementsEqual(expected3x3) { $0 == $1 }, "3x3 matrix rotation should work")
    
    var copy3x3 = matrix3x3
    rotateMatrixInPlace(&copy3x3)
    assert(copy3x3.elementsEqual(expected3x3) { $0 == $1 }, "3x3 matrix in-place rotation should work")
    
    // 2x2 matrix
    let matrix2x2 = [[1, 2], [3, 4]]
    let rotated2x2 = rotateMatrix(matrix2x2)
    let expected2x2 = [[3, 1], [4, 2]]
    assert(rotated2x2.elementsEqual(expected2x2) { $0 == $1 }, "2x2 matrix rotation should work")
    
    var copy2x2 = matrix2x2
    rotateMatrixInPlace(&copy2x2)
    assert(copy2x2.elementsEqual(expected2x2) { $0 == $1 }, "2x2 matrix in-place rotation should work")
    
    // 1x1 matrix
    let matrix1x1 = [[5]]
    let rotated1x1 = rotateMatrix(matrix1x1)
    let expected1x1 = [[5]]
    assert(rotated1x1.elementsEqual(expected1x1) { $0 == $1 }, "1x1 matrix rotation should work")
    
    var copy1x1 = matrix1x1
    rotateMatrixInPlace(&copy1x1)
    assert(copy1x1.elementsEqual(expected1x1) { $0 == $1 }, "1x1 matrix in-place rotation should work")
    
    // 5x5 matrix (odd dimension)
    let matrix5x5 = [
        [1, 2, 3, 4, 5],
        [6, 7, 8, 9, 10],
        [11, 12, 13, 14, 15],
        [16, 17, 18, 19, 20],
        [21, 22, 23, 24, 25]
    ]
    let rotated5x5 = rotateMatrix(matrix5x5)
    let expected5x5 = [
        [21, 16, 11, 6, 1],
        [22, 17, 12, 7, 2],
        [23, 18, 13, 8, 3],
        [24, 19, 14, 9, 4],
        [25, 20, 15, 10, 5]
    ]
    assert(rotated5x5.elementsEqual(expected5x5) { $0 == $1 }, "5x5 matrix rotation should work")
    
    var copy5x5 = matrix5x5
    rotateMatrixInPlace(&copy5x5)
    assert(copy5x5.elementsEqual(expected5x5) { $0 == $1 }, "5x5 matrix in-place rotation should work")
    
    print("✅ All Rotate Matrix tests passed!")
}

var matrix = [[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12], [13, 14, 15, 16]]
var rotated = rotateMatrix(matrix)
let verify = [[13, 9, 5, 1], [14, 10, 6, 2], [15, 11, 7, 3], [16, 12, 8, 4]]
assert(rotated.elementsEqual(verify) { $0 == $1 })

testRotateMatrix()
