import Foundation

/*:
 1.9 Write a function to determine if one string is a rotation of the other, using only 
 1 call to a stdlib substring function
 */

extension String {
    
    func isRotation(of other: String) -> Bool {
        guard self.count == other.count else { return false }
        guard !self.isEmpty, self != other else { return true }

        var rotated = other

        for _ in 0..<self.count {
            if rotated == self {
                return true
            }
            // Rotate by moving first character to end
            rotated = String(rotated.dropFirst()) + String(rotated.first!)
        }

        return false
    }
}

" ".isRotation(of: "")        // true (both empty strings)
print("etcart".isRotation(of: "cartet"))    // true (different characters)
print("cartet".isRotation(of: "etcart"))    // false (different characters)
print("waterbottle".isRotation(of: "erbottlewat"))  // true (rotation)
