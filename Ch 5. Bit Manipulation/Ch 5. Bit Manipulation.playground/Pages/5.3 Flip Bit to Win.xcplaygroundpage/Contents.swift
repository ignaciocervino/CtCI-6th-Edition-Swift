import Foundation

/*:
 Given and Int, find the length of the longest sequence of ones you could create by flipping one bit from 0 to 1
 
 Example:
 
 Input: `1775 (11011101111)`
 
 Output: `8`
 
 */

extension Int {
    
    var lengthOfLongest1sByFlippingABitFrom0To1: Int {
        
    }
}

let testCases = [-1: 64, Int.max: 64, -10: 63, 0: 1, 1: 2, 15: 5, 1775: 8]
testCases.forEach { e in
    assert(e.0.lengthOfLongest1sByFlippingABitFrom0To1 == e.1, "\(e.0.lengthOfLongest1sByFlippingABitFrom0To1) != \(e.1)")
}

