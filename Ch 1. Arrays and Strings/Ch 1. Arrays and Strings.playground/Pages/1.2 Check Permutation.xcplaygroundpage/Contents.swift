/*:
 1.2 Determine if a string is a permutation of another
 */

// case and punctuation sensitive
extension String {
    
    func isPermutation(s: String) -> Bool {
        guard self.count == s.count else { return false }
        var map = [Character: Int]()
        self.map { char in
            if map[char] == nil {
                map[char] = 1
            } else {
                map[char]! += 1
            }
        }

        for char in s {
            guard map[char] != nil else { return false }
            map[char]! -= 1
        }

        let isPermutation = map.values.allSatisfy { $0 == 0 }

        return isPermutation
    }
}

let s1 = "elvissiv"
let s2 = "livessiv"

assert(s2.isPermutation(s: s1))
print(s2.isPermutation(s: s1))
print("".isPermutation(s: ""))            // true – both empty
print("a".isPermutation(s: ""))           // false – one empty
print("abc".isPermutation(s: "cab"))      // true – same letters
print("abc".isPermutation(s: "abcd"))     // false – extra letter
print("aab".isPermutation(s: "aba"))      // true – repeated letters match
print("aab".isPermutation(s: "abb"))      // false – different counts
print("abc".isPermutation(s: "ABC"))      // false – case matters
print("ábc".isPermutation(s: "cbá"))      // true – unicode
print("abc".isPermutation(s: "ab "))      // false – whitespace matters
print("abc".isPermutation(s: "abc "))     // false – trailing space
print("abc".isPermutation(s: " abc"))     // false – leading space
print("abc".isPermutation(s: "abc"))      // true – identical strings
