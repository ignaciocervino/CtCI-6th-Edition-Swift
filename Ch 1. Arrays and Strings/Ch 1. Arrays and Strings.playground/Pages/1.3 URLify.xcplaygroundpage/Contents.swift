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

// Tests
let verify = "mr%20john%20smith"
var string = "mr john smith"

let test1 = string.urlIfy() == verify

string = "mr john smith    "
var copy = string
copy.urlIfyInPlace()
let test2 = copy == verify

let empty = ""
let test3 = empty.urlIfy() == ""

print(test1 ? "✅" : "❌", "Test 1")
print(test2 ? "✅" : "❌", "Test 2")
print(test3 ? "✅" : "❌", "Test 3")

let allPassed = test1 && test2 && test3
print("\n" + (allPassed ? "✅ ALL TESTS PASSED" : "❌ SOME TESTS FAILED"))

