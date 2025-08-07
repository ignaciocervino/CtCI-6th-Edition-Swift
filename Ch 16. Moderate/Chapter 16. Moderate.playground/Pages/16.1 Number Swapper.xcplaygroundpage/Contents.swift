import Foundation

/*:
 16.1 Swap a number without using a temp variable
 */
extension BinaryInteger {
    
    mutating func swap(x: inout Self) {
        
    }
}

let y = 1
var ycopy = y
let x = -1
var xcopy = x

ycopy.swap(x: &xcopy)
assert(ycopy == x && xcopy == y)
