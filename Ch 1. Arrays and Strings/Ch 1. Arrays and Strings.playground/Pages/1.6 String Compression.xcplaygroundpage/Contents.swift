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

// MARK: - Tests

let test1 = "aabcccccaaa".compressedString() == "a2b1c5a3"          // Basic compression
let test2 = "abc".compressedString() == "abc"                       // No compression benefit
let test3 = "aabbcc".compressedString() == "aabbcc"                 // No compression benefit
let test4 = "".compressedString() == ""                             // Empty string
let test5 = "a".compressedString() == "a"                           // Single character
let test6 = "aa".compressedString() == "aa"                         // Two chars, no benefit
let test7 = "aaa".compressedString() == "a3"                        // Three chars, compression helps
let test8 = "aaaa".compressedString() == "a4"                       // Four chars, compression helps
let test9 = "abcdef".compressedString() == "abcdef"                 // All unique, no benefit
let test10 = "aaabbbccc".compressedString() == "a3b3c3"             // Perfect compression case
let test11 = "aaabbbcccddd".compressedString() == "a3b3c3d3"        // Longer perfect case
let test12 = "aabbbccccdddddeeeee".compressedString() == "a2b3c4d5e5"  // Increasing counts
let test13 = "abcabcabc".compressedString() == "abcabcabc"          // Repeating pattern, no benefit
let test14 = "aaaabbbbaaaabbbb".compressedString() == "a4b4a4b4"    // Alternating groups
let test15 = "AAAAAA".compressedString() == "A6"                    // Uppercase

// Edge cases and tricky scenarios
let test16 = "abababababababab".compressedString() == "abababababababab"  // Alternating, no benefit
let test17 = "aaaaaaaaaa".compressedString() == "a10"                    // Double digit count
let test18 = "aaaaaaaaaaaaaaa".compressedString() == "a15"               // Larger count
let test19 = "abcdefghijklmnopqrstuvwxyz".compressedString() == "abcdefghijklmnopqrstuvwxyz"  // All unique
let test20 = "zzzzzzzzzzaaaaaaaabbbbbbbb".compressedString() == "z10a8b8"  // Mixed large counts

print(test1 ? "✅ PASS" : "❌ FAIL", "- Test 1 (aabcccccaaa)")
print(test2 ? "✅ PASS" : "❌ FAIL", "- Test 2 (abc - no benefit)")
print(test3 ? "✅ PASS" : "❌ FAIL", "- Test 3 (aabbcc - no benefit)")
print(test4 ? "✅ PASS" : "❌ FAIL", "- Test 4 (empty)")
print(test5 ? "✅ PASS" : "❌ FAIL", "- Test 5 (single a)")
print(test6 ? "✅ PASS" : "❌ FAIL", "- Test 6 (aa - no benefit)")
print(test7 ? "✅ PASS" : "❌ FAIL", "- Test 7 (aaa)")
print(test8 ? "✅ PASS" : "❌ FAIL", "- Test 8 (aaaa)")
print(test9 ? "✅ PASS" : "❌ FAIL", "- Test 9 (abcdef - all unique)")
print(test10 ? "✅ PASS" : "❌ FAIL", "- Test 10 (aaabbbccc)")
print(test11 ? "✅ PASS" : "❌ FAIL", "- Test 11 (aaabbbcccddd)")
print(test12 ? "✅ PASS" : "❌ FAIL", "- Test 12 (increasing counts)")
print(test13 ? "✅ PASS" : "❌ FAIL", "- Test 13 (abcabcabc pattern)")
print(test14 ? "✅ PASS" : "❌ FAIL", "- Test 14 (aaaabbbbaaaabbbb)")
print(test15 ? "✅ PASS" : "❌ FAIL", "- Test 15 (AAAAAA uppercase)")
print(test16 ? "✅ PASS" : "❌ FAIL", "- Test 16 (alternating ab)")
print(test17 ? "✅ PASS" : "❌ FAIL", "- Test 17 (a10)")
print(test18 ? "✅ PASS" : "❌ FAIL", "- Test 18 (a15)")
print(test19 ? "✅ PASS" : "❌ FAIL", "- Test 19 (full alphabet)")
print(test20 ? "✅ PASS" : "❌ FAIL", "- Test 20 (mixed large counts)")

let allBasicPassed = test1 && test2 && test3 && test4 && test5
let allEdgePassed = test6 && test7 && test8 && test9 && test10 && test11 && test12 && test13 && test14 && test15
let allTrickyPassed = test16 && test17 && test18 && test19 && test20
let allPassed = allBasicPassed && allEdgePassed && allTrickyPassed

print("\n" + (allBasicPassed ? "🎉 BASIC TESTS: ALL PASSED" : "❌ BASIC TESTS: SOME FAILED"))
print(allEdgePassed ? "🎉 EDGE CASES: ALL PASSED" : "❌ EDGE CASES: SOME FAILED")
print(allTrickyPassed ? "🎉 TRICKY CASES: ALL PASSED" : "❌ TRICKY CASES: SOME FAILED")
print("\n" + (allPassed ? "🎉 ALL TESTS PASSED" : "❌ SOME TESTS FAILED"))

// Algorithm explanation
print("\n--- Algorithm Notes ---")
print("Time complexity: O(n) - single pass through string")
print("Space complexity: O(n) - for building compressed string")
print("Key insight: Only return compressed if it's actually shorter!")
