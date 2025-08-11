/*:
 1.1 Determine if a string has all unique characters. What if you can't use additional data structures?
 */
extension String {
    func hasUniqueCharacters() -> Bool {
        return true
    }
    
    func hasUniqueCharactersWithoutAdditionalDataStructs() -> Bool {
        return true
    }
}

// MARK: - Tests

let test1 = "abc".hasUniqueCharacters() == true                              // Basic unique
let test2 = "abca".hasUniqueCharacters() == false                            // Duplicate at end
let test3 = "aab".hasUniqueCharacters() == false                             // Duplicate at start
let test4 = "abcba".hasUniqueCharacters() == false                           // Multiple duplicates
let test5 = "".hasUniqueCharacters() == true                                 // Empty string
let test6 = "a".hasUniqueCharacters() == true                                // Single character
let test7 = "abcdefghijklmnopqrstuvwxyz".hasUniqueCharacters() == true       // All lowercase alphabet
let test8 = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".hasUniqueCharacters() == true       // All uppercase alphabet
let test9 = "aA".hasUniqueCharacters() == true                               // Case sensitivity
let test10 = "123456789".hasUniqueCharacters() == true                       // Numbers
let test11 = "hello".hasUniqueCharacters() == false                          // Classic duplicate 'l'
let test12 = "world".hasUniqueCharacters() == true                           // All unique
let test13 = "programming".hasUniqueCharacters() == false                    // Multiple 'r', 'm', 'g'
let test14 = "!@#$%^&*()".hasUniqueCharacters() == true                     // Special characters
let test15 = "abcabc".hasUniqueCharacters() == false                         // Pattern repeat

print(test1 ? "✅ PASS" : "❌ FAIL", "- Test 1 (abc)")
print(test2 ? "✅ PASS" : "❌ FAIL", "- Test 2 (abca)")
print(test3 ? "✅ PASS" : "❌ FAIL", "- Test 3 (aab)")
print(test4 ? "✅ PASS" : "❌ FAIL", "- Test 4 (abcba)")
print(test5 ? "✅ PASS" : "❌ FAIL", "- Test 5 (empty)")
print(test6 ? "✅ PASS" : "❌ FAIL", "- Test 6 (single 'a')")
print(test7 ? "✅ PASS" : "❌ FAIL", "- Test 7 (alphabet)")
print(test8 ? "✅ PASS" : "❌ FAIL", "- Test 8 (ALPHABET)")
print(test9 ? "✅ PASS" : "❌ FAIL", "- Test 9 (aA case)")
print(test10 ? "✅ PASS" : "❌ FAIL", "- Test 10 (123456789)")
print(test11 ? "✅ PASS" : "❌ FAIL", "- Test 11 (hello)")
print(test12 ? "✅ PASS" : "❌ FAIL", "- Test 12 (world)")
print(test13 ? "✅ PASS" : "❌ FAIL", "- Test 13 (programming)")
print(test14 ? "✅ PASS" : "❌ FAIL", "- Test 14 (symbols)")
print(test15 ? "✅ PASS" : "❌ FAIL", "- Test 15 (abcabc)")

// Test the second method (without additional data structures)
print("\n--- Without Additional Data Structures ---")
let alt1 = "abc".hasUniqueCharactersWithoutAdditionalDataStructs() == true
let alt2 = "abca".hasUniqueCharactersWithoutAdditionalDataStructs() == false
let alt3 = "aab".hasUniqueCharactersWithoutAdditionalDataStructs() == false
let alt4 = "".hasUniqueCharactersWithoutAdditionalDataStructs() == true
let alt5 = "hello".hasUniqueCharactersWithoutAdditionalDataStructs() == false
let alt6 = "world".hasUniqueCharactersWithoutAdditionalDataStructs() == true

print(alt1 ? "✅ PASS" : "❌ FAIL", "- Alt 1 (abc)")
print(alt2 ? "✅ PASS" : "❌ FAIL", "- Alt 2 (abca)")
print(alt3 ? "✅ PASS" : "❌ FAIL", "- Alt 3 (aab)")
print(alt4 ? "✅ PASS" : "❌ FAIL", "- Alt 4 (empty)")
print(alt5 ? "✅ PASS" : "❌ FAIL", "- Alt 5 (hello)")
print(alt6 ? "✅ PASS" : "❌ FAIL", "- Alt 6 (world)")

let allPassed = test1 && test2 && test3 && test4 && test5 && test6 && test7 && test8 && test9 && test10 && test11 && test12 && test13 && test14 && test15
let altPassed = alt1 && alt2 && alt3 && alt4 && alt5 && alt6

print("\n" + (allPassed ? "🎉 SET METHOD: ALL TESTS PASSED" : "❌ SET METHOD: SOME TESTS FAILED"))
print(altPassed ? "🎉 NO DATA STRUCT METHOD: ALL TESTS PASSED" : "❌ NO DATA STRUCT METHOD: SOME TESTS FAILED")

// Performance comparison note
print("\n--- Complexity Analysis ---")
print("Set method: O(n) time, O(n) space")
print("No data struct method: O(n²) time, O(1) space")
