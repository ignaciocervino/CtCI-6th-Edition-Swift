/*:
 1.2 Determine if a string is a permutation of another
 */

extension String {
    func isPermutation(s: String) -> Bool {
        
        return false
    }
    
    func characterCounts() -> [Character: Int] {

        return [:]
    }
}

// Tests
let s1 = "elvis"
let s2 = "lives"
let s3 = "hello"

let test1 = s2.isPermutation(s: s1) == true
let test2 = s1.isPermutation(s: s2) == true
let test3 = s3.isPermutation(s: s1) == false

print(test1 ? "✅" : "❌", "Test 1")
print(test2 ? "✅" : "❌", "Test 2")
print(test3 ? "✅" : "❌", "Test 3")

let allPassed = test1 && test2 && test3
print("\n" + (allPassed ? "✅ ALL TESTS PASSED" : "❌ SOME TESTS FAILED"))
