//: 1.4 Check if a string is a permutation of a palindrome
import Foundation

extension String {
    
    func isPalindromePermutation() -> Bool {
        
    }
}

extension String {
    
    func characterCounts() -> [Character: Int] {
        
    }

}

func testPalindromePermutation() {
    // Test cases for isPalindromePermutation()
    assert("aab".isPalindromePermutation() == true, "Even count chars + 1 odd count should return true")
    assert("abc".isPalindromePermutation() == false, "All odd counts > 1 should return false")
    assert("aabbcc".isPalindromePermutation() == true, "All even counts should return true")
    assert("aabbccd".isPalindromePermutation() == true, "All even counts + 1 odd should return true")
    assert("".isPalindromePermutation() == true, "Empty string should return true")
    assert("a".isPalindromePermutation() == true, "Single character should return true")
    assert("aa".isPalindromePermutation() == true, "Two same characters should return true")
    assert("ab".isPalindromePermutation() == false, "Two different characters should return false")
    assert("racecar".isPalindromePermutation() == true, "Actual palindrome should return true")
    assert("carerac".isPalindromePermutation() == true, "Permutation of palindrome should return true")
    assert("hello".isPalindromePermutation() == false, "Non-palindrome permutation should return false")
    
    // Test with spaces and punctuation (if implementation handles them)
    let complexString = "A man, a plan, a canal – Panama"
    let shuffledComplex = String(complexString.shuffled())
    assert(shuffledComplex.isPalindromePermutation() == true, "Complex palindrome permutation should return true")
    
    assert("Aa".isPalindromePermutation() == false, "Case sensitive - different cases should return false")
    assert("AAaa".isPalindromePermutation() == true, "Case sensitive - even counts should return true")
    
    print("✅ All Palindrome Permutation tests passed!")
}

var s1 = "A man, a plan, a canal – Panama"
let s2 = String(s1.shuffled())
assert(s2.isPalindromePermutation(), s2)

testPalindromePermutation()


