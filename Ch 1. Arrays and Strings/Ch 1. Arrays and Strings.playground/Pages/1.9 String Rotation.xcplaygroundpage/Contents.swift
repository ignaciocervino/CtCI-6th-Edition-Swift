import Foundation

/*:
 1.9 Write a function to determine if one string is a rotation of the other, using only 
 1 call to a stdlib substring function
 */

extension String {
    
    func isRotation(of other: String) -> Bool {
        
    }
}

func testStringRotation() {
    // Test cases for isRotation()
    
    // Basic rotation cases
    assert("waterbottle".isRotation(of: "erbottlewat") == true, "Basic rotation should work")
    assert("etcart".isRotation(of: "cartet") == true, "Another basic rotation should work") 
    assert("cartet".isRotation(of: "etcart") == true, "Reverse rotation should work")
    
    // Same strings
    assert("hello".isRotation(of: "hello") == true, "Same strings should be rotations")
    assert("".isRotation(of: "") == true, "Empty strings should be rotations")
    assert("a".isRotation(of: "a") == true, "Same single character should be rotation")
    
    // Non-rotations
    assert("hello".isRotation(of: "world") == false, "Different strings should not be rotations")
    assert("abc".isRotation(of: "def") == false, "Different content should not be rotations")
    assert("hello".isRotation(of: "helol") == false, "Same chars different count should not be rotation")
    
    // Different lengths
    assert("hello".isRotation(of: "helloworld") == false, "Different lengths should not be rotations")
    assert("hello".isRotation(of: "hell") == false, "Shorter string should not be rotation")
    assert("hello".isRotation(of: "") == false, "Empty vs non-empty should not be rotations")
    
    // Edge cases with spaces and special chars
    assert("ab cd".isRotation(of: " cdab") == true, "Rotation with spaces should work")
    assert("abc!".isRotation(of: "!abc") == true, "Rotation with special chars should work")
    
    // Single character rotations
    assert("aaa".isRotation(of: "aaa") == true, "Repeated chars should work")
    assert("aba".isRotation(of: "aab") == true, "Single char rotation should work")
    assert("aba".isRotation(of: "baa") == true, "Another single char rotation should work")
    
    // More complex rotations
    assert("abcdefg".isRotation(of: "defgabc") == true, "Mid-point rotation should work")
    assert("abcdefg".isRotation(of: "gabcdef") == true, "Single char shift should work")
    assert("abcdefg".isRotation(of: "fgabcde") == true, "Two char shift should work")
    
    print("✅ All String Rotation tests passed!")
}

let a = ""
" ".isRotation(of: "")
assert("etcart".isRotation(of: "cartet"))
assert("cartet".isRotation(of: "etcart"))
assert("waterbottle".isRotation(of: "erbottlewat"))

testStringRotation()
