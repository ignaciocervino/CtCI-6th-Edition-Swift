/*:
 1.1 Determine if a string has all unique characters. What if you can't use additional data structures?
 */
extension String {
    func hasUniqueCharacters() -> Bool {

        return false
    }
    
    func hasUniqueCharactersWithoutAdditionalDataStructs() -> Bool {
        
        return false
    }
}

// Tests
let unique = "abc"
let dup = "abca"

let test1 = unique.hasUniqueCharacters() == true
let test2 = dup.hasUniqueCharacters() == false
let test3 = unique.hasUniqueCharactersWithoutAdditionalDataStructs() == true
let test4 = dup.hasUniqueCharactersWithoutAdditionalDataStructs() == false

print(test1 ? "✅" : "❌", "Test 1")
print(test2 ? "✅" : "❌", "Test 2") 
print(test3 ? "✅" : "❌", "Test 3")
print(test4 ? "✅" : "❌", "Test 4")

let allPassed = test1 && test2 && test3 && test4
print("\n" + (allPassed ? "✅ ALL TESTS PASSED" : "❌ SOME TESTS FAILED"))
