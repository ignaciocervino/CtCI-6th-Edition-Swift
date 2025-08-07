import Foundation


/*:
1.3 Replace all spaces in a string with %20
*/

extension String {
    
    func urlIfy() -> String {
        var result = ""

        for letter in self {
            if letter == " " {
                result.append("%20")
            } else {
                result.append(letter)
            }
        }

        return result
    }
}

let verify = "mr%20john%20smith"
var string = "mr john smith"
assert(string.urlIfy() == verify)
print(string.urlIfy() == verify)


