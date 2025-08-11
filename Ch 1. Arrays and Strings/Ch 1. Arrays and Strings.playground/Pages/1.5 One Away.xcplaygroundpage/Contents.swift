/*:
 1.5 There are three types of character edits on strings: insert, replace, or delete. 
    Write a function to return if one string is 0 or 1 edit away from the other
 */
extension String {
    func zeroOrOneEditAway(from s: String) -> Bool {
        
        return false
    }
}

// MARK: - Tests

let test1 = "ple".zeroOrOneEditAway(from: "pale") == true          // Delete 'a': pale -> ple
let test2 = "pale".zeroOrOneEditAway(from: "pale") == true         // Zero edits: identical
let test3 = "pales".zeroOrOneEditAway(from: "pale") == true        // Insert 's': pale -> pales
let test4 = "bale".zeroOrOneEditAway(from: "pale") == true         // Replace 'p' with 'b': pale -> bale
let test5 = "bake".zeroOrOneEditAway(from: "pale") == false        // Replace 'p'->b, 'l'->k: 2 edits

// Additional edge cases
let test6 = "".zeroOrOneEditAway(from: "") == true                 // Both empty
let test7 = "a".zeroOrOneEditAway(from: "") == true                // Insert one char
let test8 = "".zeroOrOneEditAway(from: "a") == true                // Delete one char
let test9 = "a".zeroOrOneEditAway(from: "b") == true               // Replace one char
let test10 = "ab".zeroOrOneEditAway(from: "") == false             // Too many insertions
let test11 = "".zeroOrOneEditAway(from: "ab") == false             // Too many deletions
let test12 = "cat".zeroOrOneEditAway(from: "dog") == false         // All different chars
let test13 = "cats".zeroOrOneEditAway(from: "cat") == true         // Insert at end
let test14 = "cat".zeroOrOneEditAway(from: "cats") == true         // Delete from end
let test15 = "act".zeroOrOneEditAway(from: "cat") == true          // Replace first char

// More complex cases
let test16 = "intention".zeroOrOneEditAway(from: "execution") == false  // Multiple edits needed
let test17 = "kitten".zeroOrOneEditAway(from: "sitting") == false       // Multiple edits needed
let test18 = "saturday".zeroOrOneEditAway(from: "sunday") == false      // Multiple edits needed
let test19 = "mart".zeroOrOneEditAway(from: "karma") == false           // Multiple edits needed
let test20 = "abc".zeroOrOneEditAway(from: "abx") == true               // Replace last char

print(test1 ? "✅ PASS" : "❌ FAIL", "- Test 1 (ple/pale - delete)")
print(test2 ? "✅ PASS" : "❌ FAIL", "- Test 2 (pale/pale - identical)")
print(test3 ? "✅ PASS" : "❌ FAIL", "- Test 3 (pales/pale - insert)")
print(test4 ? "✅ PASS" : "❌ FAIL", "- Test 4 (bale/pale - replace)")
print(test5 ? "✅ PASS" : "❌ FAIL", "- Test 5 (bake/pale - 2 edits)")
print(test6 ? "✅ PASS" : "❌ FAIL", "- Test 6 (empty/empty)")
print(test7 ? "✅ PASS" : "❌ FAIL", "- Test 7 (a/empty)")
print(test8 ? "✅ PASS" : "❌ FAIL", "- Test 8 (empty/a)")
print(test9 ? "✅ PASS" : "❌ FAIL", "- Test 9 (a/b)")
print(test10 ? "✅ PASS" : "❌ FAIL", "- Test 10 (ab/empty)")
print(test11 ? "✅ PASS" : "❌ FAIL", "- Test 11 (empty/ab)")
print(test12 ? "✅ PASS" : "❌ FAIL", "- Test 12 (cat/dog)")
print(test13 ? "✅ PASS" : "❌ FAIL", "- Test 13 (cats/cat)")
print(test14 ? "✅ PASS" : "❌ FAIL", "- Test 14 (cat/cats)")
print(test15 ? "✅ PASS" : "❌ FAIL", "- Test 15 (act/cat)")
print(test16 ? "✅ PASS" : "❌ FAIL", "- Test 16 (intention/execution)")
print(test17 ? "✅ PASS" : "❌ FAIL", "- Test 17 (kitten/sitting)")
print(test18 ? "✅ PASS" : "❌ FAIL", "- Test 18 (saturday/sunday)")
print(test19 ? "✅ PASS" : "❌ FAIL", "- Test 19 (mart/karma)")
print(test20 ? "✅ PASS" : "❌ FAIL", "- Test 20 (abc/abx)")

let allBasicPassed = test1 && test2 && test3 && test4 && test5
let allEdgePassed = test6 && test7 && test8 && test9 && test10 && test11 && test12 && test13 && test14 && test15
let allComplexPassed = test16 && test17 && test18 && test19 && test20
let allPassed = allBasicPassed && allEdgePassed && allComplexPassed

print("\n" + (allBasicPassed ? "🎉 BASIC TESTS: ALL PASSED" : "❌ BASIC TESTS: SOME FAILED"))
print(allEdgePassed ? "🎉 EDGE CASES: ALL PASSED" : "❌ EDGE CASES: SOME FAILED")
print(allComplexPassed ? "🎉 COMPLEX CASES: ALL PASSED" : "❌ COMPLEX CASES: SOME FAILED")
print("\n" + (allPassed ? "🎉 ALL TESTS PASSED" : "❌ SOME TESTS FAILED"))

// Algorithm explanation
print("\n--- Algorithm Notes ---")
print("Three operations allowed: Insert, Delete, Replace")
print("Time complexity: O(min(m,n)) where m,n are string lengths")
print("Space complexity: O(m+n) for array conversion")
