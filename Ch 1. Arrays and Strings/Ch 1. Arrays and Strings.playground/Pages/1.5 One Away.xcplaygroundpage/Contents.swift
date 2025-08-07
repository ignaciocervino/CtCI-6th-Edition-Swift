/*:
 1.5 There are three types of characeter edits on strings: insert, replace, or delete. 
    Write a function to return if one string is 0 or 1 edit away from the other
 */
extension String {
    
    func zeroOrOneEditAway(from s: String) -> Bool {
        
    }
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

