/*:
 1.8 Tranform an MxN matrix such that if an element is 0 its column and row are zeroed
 */

func zeroedMatrix(_ matrix: [[Int]]) -> [[Int]] {
    
}

func zeroedMatrixInPlace(_ matrix: inout [[Int]]) {
    
}

func zeroColumns(col: Int, matrix: inout [[Int]]) {
    
}

let matrix = [[1, 2, 3, 4],  [5, 0, 7, 8],  [9, 10, 0, 12],  [13, 14, 15, 16]]
let zeroed = zeroedMatrix(matrix)
let verify = [[1, 0, 0, 4],  [0, 0, 0, 0],  [0, 0, 0, 0],  [13, 0, 0, 16]]

assert(zeroed.elementsEqual(verify, by: ==))
print(zeroed)

var copy = matrix
zeroedMatrixInPlace(&copy)
assert(copy.elementsEqual(verify, by: ==))
