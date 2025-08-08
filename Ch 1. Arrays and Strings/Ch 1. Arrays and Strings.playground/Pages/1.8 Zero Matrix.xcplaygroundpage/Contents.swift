/*:
 1.8 Tranform an MxN matrix such that if an element is 0 its column and row are zeroed
 */

func zeroedMatrix(_ matrix: [[Int]]) -> [[Int]] {
    var result = Array(
        repeating: Array(repeating: 0, count: matrix[0].count),
        count: matrix.count
    )

    let cols = matrix[0].count
    let rows = matrix.count
    var i = 0
    var j = 0
    var affectedRow = [Int]()
    var affectedCol = [Int]()

    for i in 0 ..< rows {
        for j in 0 ..< cols {
            if matrix[i][j] == 0 {
                affectedRow.append(i)
                affectedCol.append(j)
                break
            }
        }
    }

    for i in 0 ..< result.count {
        guard !affectedRow.contains(i) else { continue }
        for j in 0 ..< result[i].count {
            guard !affectedCol.contains(j) else { continue }
            result[i][j] = matrix[i][j]
        }
    }

    return result
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

let matrix2 = [[1, 0, 3],
              [4, 5, 6],
              [7, 0, 9]]
let zeroed2 = zeroedMatrix(matrix2)
print(zeroed2)

//var copy = matrix
//zeroedMatrixInPlace(&copy)
//assert(copy.elementsEqual(verify, by: ==))
