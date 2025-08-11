/*:
 1.2 Determine if a string is a permutation of another
 */

extension String {
    func isPermutation(s: String) -> Bool {
        return true
    }
}


// MARK: - Tests

let test1 = "elvis".isPermutation(s: "lives") == true        // Basic anagram
let test2 = "lives".isPermutation(s: "elvis") == true        // Reverse check
let test3 = "hello".isPermutation(s: "elvis") == false       // Different characters
let test4 = "abc".isPermutation(s: "def") == false           // Same length, different chars
let test5 = "aab".isPermutation(s: "aba") == true            // Repeated characters
let test6 = "abc".isPermutation(s: "abcd") == false          // Different lengths
let test7 = "".isPermutation(s: "") == false                 // Empty strings (identical)
let test8 = "a".isPermutation(s: "a") == false               // Identical single char
let test9 = "a".isPermutation(s: "b") == false               // Different single chars
let test10 = "listen".isPermutation(s: "silent") == true     // Classic anagram
let test11 = "abc".isPermutation(s: "bca") == true           // All rotations
let test12 = "aab".isPermutation(s: "baa") == true           // Different frequency order
let test13 = "abc".isPermutation(s: "abc") == false          // Identical strings
let test14 = "A".isPermutation(s: "a") == false              // Case sensitivity
let test15 = "aaa".isPermutation(s: "aa") == false           // Different counts

print(test1 ? "✅ PASS" : "❌ FAIL", "- Test 1 (elvis/lives)")
print(test2 ? "✅ PASS" : "❌ FAIL", "- Test 2 (lives/elvis)")
print(test3 ? "✅ PASS" : "❌ FAIL", "- Test 3 (hello/elvis)")
print(test4 ? "✅ PASS" : "❌ FAIL", "- Test 4 (abc/def)")
print(test5 ? "✅ PASS" : "❌ FAIL", "- Test 5 (aab/aba)")
print(test6 ? "✅ PASS" : "❌ FAIL", "- Test 6 (abc/abcd)")
print(test7 ? "✅ PASS" : "❌ FAIL", "- Test 7 (empty strings)")
print(test8 ? "✅ PASS" : "❌ FAIL", "- Test 8 (identical 'a')")
print(test9 ? "✅ PASS" : "❌ FAIL", "- Test 9 (a/b)")
print(test10 ? "✅ PASS" : "❌ FAIL", "- Test 10 (listen/silent)")
print(test11 ? "✅ PASS" : "❌ FAIL", "- Test 11 (abc/bca)")
print(test12 ? "✅ PASS" : "❌ FAIL", "- Test 12 (aab/baa)")
print(test13 ? "✅ PASS" : "❌ FAIL", "- Test 13 (identical abc)")
print(test14 ? "✅ PASS" : "❌ FAIL", "- Test 14 (case A/a)")
print(test15 ? "✅ PASS" : "❌ FAIL", "- Test 15 (aaa/aa)")

let allPassed = test1 && test2 && test3 && test4 && test5 && test6 && test7 && test8 && test9 && test10 && test11 && test12 && test13 && test14 && test15
print("\n" + (allPassed ? "🎉 ALL TESTS PASSED" : "❌ SOME TESTS FAILED"))

// Edge cases worth testing
print("\n--- Edge Cases ---")
let edgeTest1 = "god".isPermutation(s: "dog") == true
let edgeTest2 = "stressed".isPermutation(s: "desserts") == true
let edgeTest3 = "conversation".isPermutation(s: "voices rant on") == false  // Spaces matter

print(edgeTest1 ? "✅ PASS" : "❌ FAIL", "- god/dog")
print(edgeTest2 ? "✅ PASS" : "❌ FAIL", "- stressed/desserts")
print(edgeTest3 ? "✅ PASS" : "❌ FAIL", "- spaces matter")
