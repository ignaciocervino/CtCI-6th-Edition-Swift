/*:
 1.5 There are three types of character edits on strings: insert, replace, or delete. 
    Write a function to return if one string is 0 or 1 edit away from the other
 */
extension String {
    func zeroOrOneEditAway(from s: String) -> Bool {
        
        return false
    }
}

// Tests
let s1 = "pale"
let s2 = "ple"
let s3 = "pale"
let s4 = "pales"
let s5 = "bale"
let s6 = "bake"

let test1 = s2.zeroOrOneEditAway(from: s1) == true
let test2 = s3.zeroOrOneEditAway(from: s1) == true
let test3 = s4.zeroOrOneEditAway(from: s1) == true
let test4 = s5.zeroOrOneEditAway(from: s1) == true
let test5 = s6.zeroOrOneEditAway(from: s1) == false

print(test1 ? "✅" : "❌", "Test 1")
print(test2 ? "✅" : "❌", "Test 2")
print(test3 ? "✅" : "❌", "Test 3")
print(test4 ? "✅" : "❌", "Test 4")
print(test5 ? "✅" : "❌", "Test 5")

let allPassed = test1 && test2 && test3 && test4 && test5
print("\n" + (allPassed ? "✅ ALL TESTS PASSED" : "❌ SOME TESTS FAILED"))

