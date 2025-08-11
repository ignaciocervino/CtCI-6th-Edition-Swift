import Foundation

/*:
1.3 Replace all spaces in a string with %20
*/
extension String {
    func urlIfy() -> String {
        return ""
    }

    mutating func urlIfyInPlace() {

    }
}

// MARK: - Tests

let test1 = "mr john smith".urlIfy() == "mr%20john%20smith"                    // Basic case
let test2 = "hello world".urlIfy() == "hello%20world"                         // Simple two words
let test3 = "a b c".urlIfy() == "a%20b%20c"                                   // Multiple single chars
let test4 = "".urlIfy() == ""                                                 // Empty string
let test5 = "   ".urlIfy() == ""                                              // Only spaces
let test6 = "oneword".urlIfy() == "oneword"                                   // No spaces
let test7 = "  leading spaces".urlIfy() == "leading%20spaces"                 // Leading spaces
let test8 = "trailing spaces  ".urlIfy() == "trailing%20spaces"               // Trailing spaces
let test9 = "  both ends  ".urlIfy() == "both%20ends"                         // Both leading/trailing
let test10 = "multiple   spaces".urlIfy() == "multiple%20%20%20spaces"        // Multiple consecutive spaces
let test11 = "a".urlIfy() == "a"                                              // Single character
let test12 = " ".urlIfy() == ""                                               // Single space
let test13 = "Mr John Smith Jr".urlIfy() == "Mr%20John%20Smith%20Jr"          // Longer sentence
let test14 = "The quick brown fox".urlIfy() == "The%20quick%20brown%20fox"    // Classic phrase
let test15 = "Special!@#$%^&*()Characters".urlIfy() == "Special!@#$%^&*()Characters"  // No spaces with symbols

print(test1 ? "✅ PASS" : "❌ FAIL", "- Test 1 (mr john smith)")
print(test2 ? "✅ PASS" : "❌ FAIL", "- Test 2 (hello world)")
print(test3 ? "✅ PASS" : "❌ FAIL", "- Test 3 (a b c)")
print(test4 ? "✅ PASS" : "❌ FAIL", "- Test 4 (empty)")
print(test5 ? "✅ PASS" : "❌ FAIL", "- Test 5 (only spaces)")
print(test6 ? "✅ PASS" : "❌ FAIL", "- Test 6 (oneword)")
print(test7 ? "✅ PASS" : "❌ FAIL", "- Test 7 (leading spaces)")
print(test8 ? "✅ PASS" : "❌ FAIL", "- Test 8 (trailing spaces)")
print(test9 ? "✅ PASS" : "❌ FAIL", "- Test 9 (both ends)")
print(test10 ? "✅ PASS" : "❌ FAIL", "- Test 10 (multiple spaces)")
print(test11 ? "✅ PASS" : "❌ FAIL", "- Test 11 (single char)")
print(test12 ? "✅ PASS" : "❌ FAIL", "- Test 12 (single space)")
print(test13 ? "✅ PASS" : "❌ FAIL", "- Test 13 (longer sentence)")
print(test14 ? "✅ PASS" : "❌ FAIL", "- Test 14 (quick brown fox)")
print(test15 ? "✅ PASS" : "❌ FAIL", "- Test 15 (special chars)")

// Test the in-place method
print("\n--- In-Place Method Tests ---")
var copy1 = "mr john smith"
copy1.urlIfyInPlace()
let inPlace1 = copy1 == "mr%20john%20smith"

var copy2 = "mr john smith    "
copy2.urlIfyInPlace()
let inPlace2 = copy2 == "mr%20john%20smith"

var copy3 = ""
copy3.urlIfyInPlace()
let inPlace3 = copy3 == ""

var copy4 = "   "
copy4.urlIfyInPlace()
let inPlace4 = copy4 == ""

var copy5 = "hello world"
copy5.urlIfyInPlace()
let inPlace5 = copy5 == "hello%20world"

var copy6 = "  both ends  "
copy6.urlIfyInPlace()
let inPlace6 = copy6 == "both%20ends"

print(inPlace1 ? "✅ PASS" : "❌ FAIL", "- InPlace 1 (mr john smith)")
print(inPlace2 ? "✅ PASS" : "❌ FAIL", "- InPlace 2 (trailing spaces)")
print(inPlace3 ? "✅ PASS" : "❌ FAIL", "- InPlace 3 (empty)")
print(inPlace4 ? "✅ PASS" : "❌ FAIL", "- InPlace 4 (only spaces)")
print(inPlace5 ? "✅ PASS" : "❌ FAIL", "- InPlace 5 (hello world)")
print(inPlace6 ? "✅ PASS" : "❌ FAIL", "- InPlace 6 (both ends)")

let regularPassed = test1 && test2 && test3 && test4 && test5 && test6 && test7 && test8 && test9 && test10 && test11 && test12 && test13 && test14 && test15
let inPlacePassed = inPlace1 && inPlace2 && inPlace3 && inPlace4 && inPlace5 && inPlace6

print("\n" + (regularPassed ? "🎉 REGULAR METHOD: ALL TESTS PASSED" : "❌ REGULAR METHOD: SOME TESTS FAILED"))
print(inPlacePassed ? "🎉 IN-PLACE METHOD: ALL TESTS PASSED" : "❌ IN-PLACE METHOD: SOME TESTS FAILED")

// Performance comparison note
print("\n--- Complexity Analysis ---")
print("Regular method: O(n) time, O(n) space")
print("In-place method: O(n²) time, O(1) extra space")
