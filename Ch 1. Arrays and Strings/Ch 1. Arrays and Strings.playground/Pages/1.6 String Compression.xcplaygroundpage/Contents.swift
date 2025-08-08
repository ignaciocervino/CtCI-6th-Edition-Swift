/*: 
 1.6 Implement basic string compression using the counts of repeated characters. 
 If the compressed string is not smaller than the original, return the original.
 You can assume the string has only characters a-z \
  `aabcccccaaa -> a2b1c5a3`
 */

extension String {
    
    func compressedString() -> String {
        guard let firstLetter = self.first else { return self }
        var compressed = ""
        var counter = 0
        var current = firstLetter
        compressed.append(firstLetter)
        for letter in self {
            if letter != current {
                compressed.append(String(counter))
                compressed.append(letter)
                current = letter
                counter = 1
            } else {
                counter += 1
            }
        }
        compressed.append(String(counter))

        if self.count > compressed.count {
            return compressed
        } else {
            return self
        }
    }
}

var s = "aabcccccaaa"
let compressed = s.compressedString()
print(s.compressedString())
assert(compressed == "a2b1c5a3", "\(compressed) != a2b1c5a3")
