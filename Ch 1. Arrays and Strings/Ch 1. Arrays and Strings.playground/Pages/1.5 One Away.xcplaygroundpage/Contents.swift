/*:
 1.5 There are three types of characeter edits on strings: insert, replace, or delete. 
    Write a function to return if one string is 0 or 1 edit away from the other
 */
extension String {
    
    func zeroOrOneEditAway(from s: String) -> Bool {
        var differences = 0

        var array = Array(self)
        var array2 = Array(s)
        var i = 0
        var j = 0

        let max = max(array.count, array2.count)
        while i < max {
            guard differences <= 1 else { return false }
            if i == array.count {
                differences += 1
                j += 1
                continue
            }

            if j == array2.count {
                differences += 1
                i += 1
                continue
            }

            if array[i] != array2[j] {
                differences += 1
                if array.count > array2.count {
                    i += 1
                    continue
                } else if array.count < array2.count {
                    j += 1
                    continue
                }
            }

            i += 1
            j += 1
        }

        return differences <= 1
    }
}

var s1 = "pale"
var s2 = "ple"

print(s1.zeroOrOneEditAway(from: s2))

s1 = "pale"
s2 = "pale"

print(s2.zeroOrOneEditAway(from: s1))

s1 = "pale"
s2 = "pales"

print(s2.zeroOrOneEditAway(from: s1))


s1 = "pale"
s2 = "bake"
 
print(s2.zeroOrOneEditAway(from: s1))

print("pale".zeroOrOneEditAway(from: "pse"))
print("abc".zeroOrOneEditAway(from: "cba")) // Should be false
print("pale".zeroOrOneEditAway(from: "bae")) // ❌ Should be false
