/*:
 1.1 Determine if a string has all unique characters. What if you can't use additional data structures?
 */
extension String {
    
    func hasUniqueCharacters() -> Bool {
        Set(self).count == self.count
    }
    
    func hasUniqueCharactersWithoutAdditionalDataStructs() -> Bool {
        for (i, letter) in self.enumerated() {
            for (j, letter2) in self.enumerated() {
                guard i != j else { continue }
                guard letter != letter2 else { return false }
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



