import Foundation

/*:
 1.9 Write a function to determine if one string is a rotation of the other, using only 
 1 call to a stdlib substring function
 */
extension String {
    func isRotation(of other: String) -> Bool {

        return false
    }
}

// MARK: - Tests

let test1 = "erbottlewat".isRotation(of: "waterbottle") == true     // Classic example
let test2 = "etcart".isRotation(of: "cartet") == true               // Basic rotation
let test3 = "cartet".isRotation(of: "etcart") == true               // Bidirectional
let test4 = "hello".isRotation(of: "world") == false                // Different strings
let test5 = "".isRotation(of: "") == true                           // Empty strings
let test6 = "a".isRotation(of: "a") == true                         // Single char, identical
let test7 = "ab".isRotation(of: "ba") == true                       // Two chars
let test8 = "abc".isRotation(of: "bca") == true                     // Three chars
let test9 = "abc".isRotation(of: "cab") == true                     // Another rotation
let test10 = "abc".isRotation(of: "acb") == false                   // Not a rotation
let test11 = "abcde".isRotation(of: "cdeab") == true                // Longer rotation
let test12 = "abcdef".isRotation(of: "defabc") == true              // Split in middle
let test13 = "programming".isRotation(of: "grammingpro") == true    // Real word
let test14 = "listen".isRotation(of: "silent") == false             // Anagram, not rotation
let test15 = "aaa".isRotation(of: "aaa") == true                    // Repeated chars
let test16 = "abab".isRotation(of: "baba") == true                  // Pattern rotation
let test17 = "abcabc".isRotation(of: "cabcab") == true              // Repeating pattern
let test18 = "hello".isRotation(of: "hello") == true                // Identical strings
let test19 = "a".isRotation(of: "b") == false                       // Different single chars
let test20 = "ab".isRotation(of: "abc") == false                    // Different lengths

// Edge cases with special characters and numbers
let test21 = "123456".isRotation(of: "456123") == true              // Numbers
let test22 = "!@#$%".isRotation(of: "#$%!@") == true                // Special chars
let test23 = "a1b2c3".isRotation(of: "2c3a1b") == true              // Mixed alphanumeric
let test24 = "AbC".isRotation(of: "CaB") == false                   // Case sensitivity
let test25 = "AbC".isRotation(of: "bCA") == true                    // Case sensitive rotation

print(test1 ? "✅ PASS" : "❌ FAIL", "- Test 1 (erbottlewat/waterbottle)")
print(test2 ? "✅ PASS" : "❌ FAIL", "- Test 2 (etcart/cartet)")
print(test3 ? "✅ PASS" : "❌ FAIL", "- Test 3 (cartet/etcart)")
print(test4 ? "✅ PASS" : "❌ FAIL", "- Test 4 (hello/world)")
print(test5 ? "✅ PASS" : "❌ FAIL", "- Test 5 (empty strings)")
print(test6 ? "✅ PASS" : "❌ FAIL", "- Test 6 (single char)")
print(test7 ? "✅ PASS" : "❌ FAIL", "- Test 7 (ab/ba)")
print(test8 ? "✅ PASS" : "❌ FAIL", "- Test 8 (abc/bca)")
print(test9 ? "✅ PASS" : "❌ FAIL", "- Test 9 (abc/cab)")
print(test10 ? "✅ PASS" : "❌ FAIL", "- Test 10 (abc/acb - not rotation)")
print(test11 ? "✅ PASS" : "❌ FAIL", "- Test 11 (abcde/cdeab)")
print(test12 ? "✅ PASS" : "❌ FAIL", "- Test 12 (abcdef/defabc)")
print(test13 ? "✅ PASS" : "❌ FAIL", "- Test 13 (programming/grammingpro)")
print(test14 ? "✅ PASS" : "❌ FAIL", "- Test 14 (listen/silent - anagram)")
print(test15 ? "✅ PASS" : "❌ FAIL", "- Test 15 (aaa/aaa)")
print(test16 ? "✅ PASS" : "❌ FAIL", "- Test 16 (abab/baba)")
print(test17 ? "✅ PASS" : "❌ FAIL", "- Test 17 (abcabc/cabcab)")
print(test18 ? "✅ PASS" : "❌ FAIL", "- Test 18 (hello/hello - identical)")
print(test19 ? "✅ PASS" : "❌ FAIL", "- Test 19 (a/b)")
print(test20 ? "✅ PASS" : "❌ FAIL", "- Test 20 (ab/abc - diff lengths)")
print(test21 ? "✅ PASS" : "❌ FAIL", "- Test 21 (123456/456123)")
print(test22 ? "✅ PASS" : "❌ FAIL", "- Test 22 (!@#$%/#$%!@)")
print(test23 ? "✅ PASS" : "❌ FAIL", "- Test 23 (a1b2c3/2c3a1b)")
print(test24 ? "✅ PASS" : "❌ FAIL", "- Test 24 (AbC/CaB - case)")
print(test25 ? "✅ PASS" : "❌ FAIL", "- Test 25 (AbC/bCA)")

let allBasicPassed = test1 && test2 && test3 && test4 && test5 && test6 && test7 && test8 && test9 && test10
let allEdgePassed = test11 && test12 && test13 && test14 && test15 && test16 && test17 && test18 && test19 && test20
let allSpecialPassed = test21 && test22 && test23 && test24 && test25
let allPassed = allBasicPassed && allEdgePassed && allSpecialPassed

print("\n" + (allBasicPassed ? "🎉 BASIC TESTS: ALL PASSED" : "❌ BASIC TESTS: SOME FAILED"))
print(allEdgePassed ? "🎉 EDGE CASES: ALL PASSED" : "❌ EDGE CASES: SOME FAILED")
print(allSpecialPassed ? "🎉 SPECIAL CHARS: ALL PASSED" : "❌ SPECIAL CHARS: SOME FAILED")
print("\n" + (allPassed ? "🎉 ALL TESTS PASSED" : "❌ SOME TESTS FAILED"))

// Visual demonstration
print("\n--- The Key Insight ---")
print("To check if 'erbottlewat' is a rotation of 'waterbottle':")
print("1. Double the original: 'waterbottle' + 'waterbottle' = 'waterbottlewaterbottle'")
print("2. Check if rotation exists in doubled string: 'erbottlewat' in 'waterbottlewaterbottle'")
print("3. Result: YES! (starting at position 3)")

print("\n--- Algorithm Notes ---")
print("Time complexity: O(n) - one substring search")
print("Space complexity: O(n) - for doubled string")
print("Key insight: All rotations appear as substrings in original + original")
print("Uses only ONE call to stdlib function: contains()")
