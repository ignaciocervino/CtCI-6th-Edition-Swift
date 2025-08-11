//: 1.4 Check if a string is a permutation of a palindrome
/*
 Palindrome Permutation: Given a string, write a function to check if it is a permutation of
 a palindrome. A palindrome is a word or phrase that is the same forwards and backwards, A
 permutation is a rearrangement of letters. The palindrome does not need to be limited to just
 dictionary words.
 EXAMPLE
 Input: Tact Coa
 Output: True (permutations: "taco c a t " " a t c o eta" etc.)
 */
import Foundation

extension String {
    func isPalindromePermutation() -> Bool {
        return true
    }
}


// MARK: - Tests

let test1 = "aab".isPalindromePermutation() == true          // "aba" or "baa"
let test2 = "carerac".isPalindromePermutation() == true      // "racecar"
let test3 = "code".isPalindromePermutation() == false        // No valid palindrome
let test4 = "aabbcc".isPalindromePermutation() == true       // "abccba", "acbbca", etc.
let test5 = "abc".isPalindromePermutation() == false         // 3 odd frequencies
let test6 = "".isPalindromePermutation() == true             // Empty string edge case
let test7 = "a".isPalindromePermutation() == true            // Single character
let test8 = "Aa".isPalindromePermutation() == true           // Case insensitive: "aa"
let test9 = "racecar".isPalindromePermutation() == true      // Already a palindrome
let test10 = "hello".isPalindromePermutation() == false      // Multiple odd frequencies

print(test1 ? "✅ PASS" : "❌ FAIL", "- Test 1 (aab)")
print(test2 ? "✅ PASS" : "❌ FAIL", "- Test 2 (carerac)")
print(test3 ? "✅ PASS" : "❌ FAIL", "- Test 3 (code)")
print(test4 ? "✅ PASS" : "❌ FAIL", "- Test 4 (aabbcc)")
print(test5 ? "✅ PASS" : "❌ FAIL", "- Test 5 (abc)")
print(test6 ? "✅ PASS" : "❌ FAIL", "- Test 6 (empty)")
print(test7 ? "✅ PASS" : "❌ FAIL", "- Test 7 (a)")
print(test8 ? "✅ PASS" : "❌ FAIL", "- Test 8 (Aa)")
print(test9 ? "✅ PASS" : "❌ FAIL", "- Test 9 (racecar)")
print(test10 ? "✅ PASS" : "❌ FAIL", "- Test 10 (hello)")

let allPassed = test1 && test2 && test3 && test4 && test5 && test6 && test7 && test8 && test9 && test10
print("\n" + (allPassed ? "🎉 ALL TESTS PASSED" : "❌ SOME TESTS FAILED"))

// Additional edge cases you might see
let specialTest1 = "A man, a plan, a canal: Panama".isPalindromePermutation() == true
let specialTest2 = "race a car".isPalindromePermutation() == false

print("\n--- Special Cases ---")
print(specialTest1 ? "✅ PASS" : "❌ FAIL", "- Palindrome sentence")
print(specialTest2 ? "✅ PASS" : "❌ FAIL", "- Non-palindrome sentence")
