//: 1.4 Check if a string is a permutation of a palindrome
import Foundation

extension String {
    // A string can be permuted into a palindrome if at most one character has an odd count.
    func isPalindromePermutation() -> Bool {
        var cleaned = self.lowercased().filter { $0 != " " }
        var hash = [Character: Int]()
        cleaned.forEach { char in
            if hash[char] != nil {
                hash[char]! += 1
            } else {
                hash[char] = 1
            }
        }
        var oddCount = 0
        for number in hash.values {
            if !number.isMultiple(of: 2) {
                oddCount += 1
            }

            if oddCount > 1 {
                return false
            }
        }

        return true
    }
}

extension Array<Character> {

    func isPalindrome() -> Bool {
        self == self.reversed()
    }
}

// ✅ Valid palindrome permutations
print("Tact Coa".isPalindromePermutation())         // true  → "taco cat"
print("racecar".isPalindromePermutation())          // true  → already a palindrome
print("carrace".isPalindromePermutation())          // true  → can become "racecar"
print("aab".isPalindromePermutation())              // true  → "aba"
print("aabbcc".isPalindromePermutation())           // true  → even counts
print("aabbc".isPalindromePermutation())            // true  → "abcba"
print("abcdabc".isPalindromePermutation())          // true  → one odd → "abc|d|cba"
print("aabbccd".isPalindromePermutation())          // true  → one odd → "abcd|d|dcba"

// ❌ Invalid palindrome permutations
print("abc".isPalindromePermutation())              // false → 3 odd counts
print("aabc".isPalindromePermutation())             // false → 2 odd counts
print("aabbccddeeffg".isPalindromePermutation())    // false → 2 odd counts: 'g' and one more

// ✅ Edge cases
print("".isPalindromePermutation())                 // true  → empty is trivially a palindrome
print(" ".isPalindromePermutation())                // true  → space is ignored
print("a".isPalindromePermutation())                // true  → one char

// ✅ With punctuation & spaces (if you normalize only spaces)
print("A man a plan a canal Panama".isPalindromePermutation()) // true
print("No x in Nixon".isPalindromePermutation())               // true

// ❌ False if punctuation not stripped
print("No, x in Nixon.".isPalindromePermutation())             // false unless you strip punctuation

