/*: 
 1.6 Implement basic string compression using the counts of repeated characters. 
 If the compressed string is not smaller than the original, return the original.
 You can assume the string has only characters a-z \
  `aabcccccaaa -> a2b1c5a3`
 */

extension String {
    
    func compressedString() -> String {
        
    }
}

func testStringCompression() {
    // Test cases for compressedString()
    
    // Basic compression cases
    assert("aabcccccaaa".compressedString() == "a2b1c5a3", "Basic compression should work")
    assert("abc".compressedString() == "abc", "No compression should return original")
    assert("aabbcc".compressedString() == "aabbcc", "Short compression should return original")
    assert("aaabbbccc".compressedString() == "a3b3c3", "Equal length should compress")
    
    // Edge cases
    assert("".compressedString() == "", "Empty string should return empty")
    assert("a".compressedString() == "a", "Single character should return original")
    assert("aa".compressedString() == "aa", "Two chars should return original")
    assert("aaa".compressedString() == "aaa", "Three chars borderline should return original")
    assert("aaaa".compressedString() == "a4", "Four chars should compress")
    
    // Longer sequences
    assert("aaaaaabbbbbbccccccddddddeeeeeeffffff".compressedString() == "a6b6c6d6e6f6", "Long sequences should compress well")
    assert("abcdefghijklmnopqrstuvwxyz".compressedString() == "abcdefghijklmnopqrstuvwxyz", "No repeats should return original")
    
    // Mixed patterns
    assert("aabbccddee".compressedString() == "aabbccddee", "All pairs should return original")
    assert("aaabbbcccdddeeefffggghhhiiijjjkkklllmmmnnnoooppp".compressedString() == "a3b3c3d3e3f3g3h3i3j3k3l3m3n3o3p3", "All triplets should compress")
    
    // Single long sequence
    assert("aaaaaaaaaa".compressedString() == "a10", "Ten same chars should compress")
    assert("aaaabbbbccccdddd".compressedString() == "a4b4c4d4", "Multiple groups of four should compress")
    
    print("✅ All String Compression tests passed!")
}

var s = "aabcccccaaa"
let compressed = s.compressedString()
assert(compressed == "a2b1c5a3", "\(compressed) != a2b1c5a3")

testStringCompression()
