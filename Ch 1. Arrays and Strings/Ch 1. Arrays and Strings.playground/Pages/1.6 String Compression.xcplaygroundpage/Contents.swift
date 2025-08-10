/*:
 1.6 Implement basic string compression using the counts of repeated characters. 
 If the compressed string is not smaller than the original, return the original.
 You can assume the string has only characters a-z 
  Example: `aabcccccaaa -> a2b1c5a3`
 */
extension String {
    func compressedString() -> String {

        return ""
    }
}

// Tests
let s1 = "aabcccccaaa"
let s2 = "abc"
let s3 = "aabbcc"
let s4 = ""

let test1 = s1.compressedString() == "a2b1c5a3"
let test2 = s2.compressedString() == "abc"
let test3 = s3.compressedString() == "aabbcc"
let test4 = s4.compressedString() == ""

print(test1 ? "✅" : "❌", "Test 1")
print(test2 ? "✅" : "❌", "Test 2")
print(test3 ? "✅" : "❌", "Test 3")
print(test4 ? "✅" : "❌", "Test 4")

let allPassed = test1 && test2 && test3 && test4
print("\n" + (allPassed ? "✅ ALL TESTS PASSED" : "❌ SOME TESTS FAILED"))
