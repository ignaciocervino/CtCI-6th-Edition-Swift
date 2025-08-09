/*:
 1.5 There are three types of characeter edits on strings: insert, replace, or delete. 
    Write a function to return if one string is 0 or 1 edit away from the other
 */
extension String {
    
    func zeroOrOneEditAway(from s: String) -> Bool {
        
    }
}

func testOneAway() {
    // Test cases for zeroOrOneEditAway()
    
    // Zero edits (identical strings)
    assert("pale".zeroOrOneEditAway(from: "pale") == true, "Identical strings should return true")
    assert("".zeroOrOneEditAway(from: "") == true, "Both empty strings should return true")
    assert("a".zeroOrOneEditAway(from: "a") == true, "Same single character should return true")
    
    // One edit - insert
    assert("pales".zeroOrOneEditAway(from: "pale") == true, "Insert one character should return true")
    assert("pale".zeroOrOneEditAway(from: "ple") == true, "Insert one character (reverse) should return true")
    assert("a".zeroOrOneEditAway(from: "") == true, "Insert into empty string should return true")
    assert("".zeroOrOneEditAway(from: "a") == true, "Delete from single char should return true")
    
    // One edit - replace
    assert("pale".zeroOrOneEditAway(from: "bale") == true, "Replace one character should return true")
    assert("pale".zeroOrOneEditAway(from: "pble") == true, "Replace middle character should return true")
    assert("pale".zeroOrOneEditAway(from: "palz") == true, "Replace last character should return true")
    assert("a".zeroOrOneEditAway(from: "b") == true, "Replace single character should return true")
    
    // Two or more edits (should return false)
    assert("pale".zeroOrOneEditAway(from: "bake") == false, "Two replacements should return false")
    assert("pale".zeroOrOneEditAway(from: "pa") == false, "Two deletions should return false")
    assert("pale".zeroOrOneEditAway(from: "palest") == false, "Two insertions should return false")
    assert("abc".zeroOrOneEditAway(from: "def") == false, "Complete replacement should return false")
    assert("".zeroOrOneEditAway(from: "ab") == false, "Two insertions to empty should return false")
    assert("ab".zeroOrOneEditAway(from: "") == false, "Two deletions should return false")
    
    // Edge cases
    assert("abcdef".zeroOrOneEditAway(from: "abcdefg") == true, "Long string with one insertion")
    assert("abcdefg".zeroOrOneEditAway(from: "abcdef") == true, "Long string with one deletion")
    assert("abcdef".zeroOrOneEditAway(from: "abxdef") == true, "Long string with one replacement")
    
    print("✅ All One Away tests passed!")
}

var s1 = "pale"
var s2 = "ple"

assert(s2.zeroOrOneEditAway(from: s1))

s1 = "pale"
s2 = "pale"

assert(s2.zeroOrOneEditAway(from: s1))

s1 = "pale"
s2 = "pales"

assert(s2.zeroOrOneEditAway(from: s1))


s1 = "pale"
s2 = "bake"
 
assert(!s2.zeroOrOneEditAway(from: s1))

testOneAway()

