/*:
 1.7 Rotate an NxN matrix
 */

// My solution in pseudocode
// loop by rows
// And cols reversed
// have to pointers
//. i for row pointer
//. j col pointer
// make a new matrix and start appending self[j][i]
// meaning j starts as last column of each row
// once added we go i+= 1 up to rows - 1
// And we reset i to 0 and j=-1
// so up to j being 0
extension RandomAccessCollection where Iterator.Element: RandomAccessCollection, Iterator.Element.Index == Index, Indices.Iterator.Element == Index {

    func rotated() -> [[Iterator.Element.Iterator.Element]] {
        guard !isEmpty else { return [] }
        guard !self[startIndex].isEmpty else { return [] }

        var rotated = [[Iterator.Element.Iterator.Element]]()

        // For each column position (becomes new rows)
        var colIndex = self[startIndex].startIndex
        while colIndex < self[startIndex].endIndex {
            var newRow = [Iterator.Element.Iterator.Element]()

            // For each row (in reverse order for rotation)
            var rowIndex = index(before: endIndex)  // Start from last row
            while rowIndex >= startIndex {
                let element = self[rowIndex][colIndex]
                newRow.append(element)

                if rowIndex == startIndex { break }  // Avoid underflow
                rowIndex = index(before: rowIndex)
            }

            rotated.append(newRow)
            colIndex = self[startIndex].index(after: colIndex)
        }

        return rotated
    }
}

var matrix = [[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12], [13, 14, 15, 16]]
var rotated = matrix.rotated()
let verify = [[13, 9, 5, 1], [14, 10, 6, 2], [15, 11, 7, 3], [16, 12, 8, 4]]
assert(rotated.elementsEqual(verify, by: { $0 == $1 }))
