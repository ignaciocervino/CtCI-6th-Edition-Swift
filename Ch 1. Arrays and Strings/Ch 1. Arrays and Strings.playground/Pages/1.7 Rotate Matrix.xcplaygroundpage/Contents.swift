/*:
 1.7 Rotate an NxN matrix
 */

extension RandomAccessCollection where Iterator.Element: RandomAccessCollection, Iterator.Element.Index == Index, Indices.Iterator.Element == Index {

    func rotated() -> [[Iterator.Element.Iterator.Element]] {
        
    }

}

var matrix = [[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12], [13, 14, 15, 16]]
var rotated = matrix.rotated()
let verify = [[4, 8, 12, 16], [3, 7, 11, 15], [2, 6, 10, 14], [1, 5, 9, 13]]
assert(rotated.elementsEqual(verify) { $0 == $1 })
