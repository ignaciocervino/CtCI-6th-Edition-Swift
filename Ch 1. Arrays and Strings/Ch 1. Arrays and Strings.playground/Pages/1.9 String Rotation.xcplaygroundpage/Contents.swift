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

// Tests
let s1 = "waterbottle"
let s2 = "erbottlewat" 
let s3 = "cartet"
let s4 = "etcart"
let s5 = "hello"
let s6 = "world"

let test1 = s2.isRotation(of: s1) == true
let test2 = s4.isRotation(of: s3) == true
let test3 = s3.isRotation(of: s4) == true
let test4 = s5.isRotation(of: s6) == false
let test5 = "".isRotation(of: "") == true

print(test1 ? "✅" : "❌", "Test 1")
print(test2 ? "✅" : "❌", "Test 2")
print(test3 ? "✅" : "❌", "Test 3")
print(test4 ? "✅" : "❌", "Test 4")
print(test5 ? "✅" : "❌", "Test 5")

let allPassed = test1 && test2 && test3 && test4 && test5
print("\n" + (allPassed ? "✅ ALL TESTS PASSED" : "❌ SOME TESTS FAILED"))
