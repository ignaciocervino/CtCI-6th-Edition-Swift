import Foundation


/*:
1.3 Replace all spaces in a string with %20
*/

extension String {
    
    func urlIfy() -> String {
        
    }
    
    mutating func urlIfyInPlace() {
        
    }
}

func testURLify() {
    // Test cases for urlIfy()
    assert("mr john smith".urlIfy() == "mr%20john%20smith", "Basic space replacement should work")
    assert("hello world".urlIfy() == "hello%20world", "Single space replacement should work")
    assert("".urlIfy() == "", "Empty string should return empty")
    assert("nospaces".urlIfy() == "nospaces", "String with no spaces should remain unchanged")
    assert(" ".urlIfy() == "%20", "Single space should become %20")
    assert("  ".urlIfy() == "%20%20", "Multiple consecutive spaces should be replaced")
    assert("a b c".urlIfy() == "a%20b%20c", "Multiple spaces throughout should be replaced")
    assert("start with space".urlIfy() == "start%20with%20space", "Leading space handling")
    assert("end with space ".urlIfy() == "end%20with%20space%20", "Trailing space handling")
    
    // Test cases for urlIfyInPlace()
    var test1 = "mr john smith    "
    test1.urlIfyInPlace()
    assert(test1 == "mr%20john%20smith", "In-place URL encoding should work")
    
    var test2 = "hello world  "
    test2.urlIfyInPlace()
    assert(test2 == "hello%20world", "In-place single space replacement")
    
    var test3 = "nospaces"
    test3.urlIfyInPlace()
    assert(test3 == "nospaces", "In-place no spaces should remain unchanged")
    
    var test4 = "a b c      "
    test4.urlIfyInPlace()
    assert(test4 == "a%20b%20c", "In-place multiple spaces should work")
    
    print("✅ All URLify tests passed!")
}

let verify = "mr%20john%20smith"
var string = "mr john smith"
assert(string.urlIfy() == verify)

string = "mr john smith    "
var copy = string
copy.urlIfyInPlace()
print("\"\(copy)\"")
assert(copy == verify)

testURLify()


