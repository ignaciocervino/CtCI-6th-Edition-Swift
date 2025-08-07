/*:
 1.1 Determine if a string has all unique characters. What if you can't use additional data structures?
 */
extension String {
    
    func hasUniqueCharacters() -> Bool {
        Set(self).count == self.count
    }
    
    func hasUniqueCharactersWithoutAdditionalDataStructs() -> Bool {
        for (i, letter) in self.enumerated() {
            var start = i + 1
            for j in start..<self.count {
                if letter == self[self.index(self.startIndex, offsetBy: j)] {
                    return false
                }
            }
        }
        return true
    }
}

let unique = "abcdefghi"
unique.hasUniqueCharacters()
let dup = "abcdefghi"

//assert(!dup.hasUniqueCharactersWithoutAdditionalDataStructs())
print(dup.hasUniqueCharactersWithoutAdditionalDataStructs())



