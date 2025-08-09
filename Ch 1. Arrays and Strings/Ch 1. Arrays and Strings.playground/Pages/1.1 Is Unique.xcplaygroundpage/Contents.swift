/*:
 1.1 Determine if a string has all unique characters. What if you can't use additional data structures?
 */
extension String {
    
    func hasUniqueCharacters() -> Bool {
        
    }
    
    func hasUniqueCharactersWithoutAdditionalDataStructs() -> Bool {
        
    }
}

func testIsUnique() {
    // Test cases for hasUniqueCharacters()
    assert("abcdefg".hasUniqueCharacters() == true, "All unique characters should return true")
    assert("hello".hasUniqueCharacters() == false, "Repeated characters should return false")
    assert("".hasUniqueCharacters() == true, "Empty string should return true")
    assert("1234567890".hasUniqueCharacters() == true, "Numeric unique characters should return true")
    assert("abA".hasUniqueCharacters() == true, "Case sensitivity: different cases are unique")
    assert("aa".hasUniqueCharacters() == false, "Same character repeated should return false")
    assert("a".hasUniqueCharacters() == true, "Single character should return true")
    assert("abcdefghijklmnopqrstuvwxyz".hasUniqueCharacters() == true, "Full alphabet should be unique")
    assert("abcdefghijklmnopqrstuvwxyza".hasUniqueCharacters() == false, "Repeated 'a' should return false")
    
    // Test cases for hasUniqueCharactersWithoutAdditionalDataStructs()
    assert("abcdefg".hasUniqueCharactersWithoutAdditionalDataStructs() == true, "All unique characters without extra data structures")
    assert("hello".hasUniqueCharactersWithoutAdditionalDataStructs() == false, "Repeated characters without extra data structures")
    assert("".hasUniqueCharactersWithoutAdditionalDataStructs() == true, "Empty string without extra data structures")
    assert("1234567890".hasUniqueCharactersWithoutAdditionalDataStructs() == true, "Numeric unique without extra data structures")
    assert("abA".hasUniqueCharactersWithoutAdditionalDataStructs() == true, "Case sensitivity without extra data structures")
    assert("aa".hasUniqueCharactersWithoutAdditionalDataStructs() == false, "Same character repeated without extra data structures")
    assert("a".hasUniqueCharactersWithoutAdditionalDataStructs() == true, "Single character without extra data structures")
    
    print("✅ All Is Unique tests passed!")
}

let unique = "abc"
assert(unique.hasUniqueCharacters())
let dup = "abca"

assert(!dup.hasUniqueCharactersWithoutAdditionalDataStructs())

testIsUnique()



