/*:
 1.2 Determine if a string is a permutation of another
 */

// case and punctuation sensitive
extension String {
    
    func isPermutation(s: String) -> Bool {
        
    }
}

extension String {
    
    func characterCounts() -> [Character: Int] {
        
    }
}

func testCheckPermutation() {
    // Test cases for isPermutation()
    assert("elvis".isPermutation(s: "lives") == true, "Anagrams should return true")
    assert("listen".isPermutation(s: "silent") == true, "Different anagram pair should return true")
    assert("hello".isPermutation(s: "bello") == false, "Different characters should return false")
    assert("".isPermutation(s: "") == true, "Empty strings should return true")
    assert("a".isPermutation(s: "a") == true, "Same single character should return true")
    assert("a".isPermutation(s: "b") == false, "Different single characters should return false")
    assert("abc".isPermutation(s: "def") == false, "Completely different strings should return false")
    assert("aab".isPermutation(s: "aba") == true, "Different order same frequency should return true")
    assert("aab".isPermutation(s: "aaa") == false, "Same length different frequency should return false")
    assert("abc".isPermutation(s: "abcd") == false, "Different lengths should return false")
    assert("ABC".isPermutation(s: "abc") == false, "Case sensitive - should return false")
    assert("a b c".isPermutation(s: "c a b") == true, "Strings with spaces should work")
    assert("123".isPermutation(s: "321") == true, "Numeric strings should work")
    
    print("✅ All Check Permutation tests passed!")
}

let s1 = "elvis"
let s2 = "lives"

assert(s2.isPermutation(s: s1))

testCheckPermutation()


