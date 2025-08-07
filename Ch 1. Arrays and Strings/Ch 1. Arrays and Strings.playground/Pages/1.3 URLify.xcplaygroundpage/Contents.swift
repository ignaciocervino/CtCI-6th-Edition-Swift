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

let verify = "mr%20john%20smith"
var string = "mr john smith"
assert(string.urlIfy() == verify)

string = "mr john smith    "
var copy = string
copy.urlIfyInPlace()
print("\"\(copy)\"")
assert(copy == verify)


