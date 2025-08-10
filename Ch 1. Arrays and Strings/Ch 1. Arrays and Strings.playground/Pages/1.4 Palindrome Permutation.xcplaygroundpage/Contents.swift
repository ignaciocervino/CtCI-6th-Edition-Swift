//: 1.4 Check if a string is a permutation of a palindrome
import Foundation

extension String {
    func isPalindromePermutation() -> Bool {

        return false
    }
    
    func characterCounts() -> [Character: Int] {
        
        return [:]
    }
}

// Tests
let s1 = "A man, a plan, a canal – Panama"
let s2 = String(s1.shuffled())
let s3 = "hello"

let test1 = s1.isPalindromePermutation() == true
let test2 = s2.isPalindromePermutation() == true  
let test3 = s3.isPalindromePermutation() == false
let test4 = "aab".isPalindromePermutation() == true

print(test1 ? "✅" : "❌", "Test 1")
print(test2 ? "✅" : "❌", "Test 2")
print(test3 ? "✅" : "❌", "Test 3")
print(test4 ? "✅" : "❌", "Test 4")

let allPassed = test1 && test2 && test3 && test4
print("\n" + (allPassed ? "✅ ALL TESTS PASSED" : "❌ SOME TESTS FAILED"))


