import Foundation

/*:
 Given a positive Int, print the next smallest and the next largest number that have the same
 number of 1 bits in their binary representation.
 */

extension UInt {
    
    var nextSmallerAndLargerIntsWithSameCountOfBitsSetTo1: (smaller: UInt?, larger: UInt?) {
        return (nextSmaller, nextLarger)
    }
    
    private var nextLarger: UInt? {
        
    }
    
    private var nextSmaller: UInt? {
        
    }
}


for i: UInt in 13000..<14000 {
    
    let (smaller, larger) = i.nextSmallerAndLargerIntsWithSameCountOfBitsSetTo1
    let iBitCount = i.bitsSetCount
    
    if let smaller = smaller {
        let smallerBitCount = smaller.bitsSetCount
        assert(smaller < i, "i = \(i), smaller = \(smaller)", file: "")
        assert(smallerBitCount == iBitCount, "i = \(i), iBitCount = \(iBitCount), smaller = \(smaller) smallerBitCount = \(smallerBitCount)", file: "")
        var j = i - 1
        while j > smaller {
            let jBitCount = j.bitsSetCount
            assert(jBitCount != iBitCount, "\(jBitCount) == \(iBitCount) for \(j) \(i) \(smaller)", file: "")
            j -= 1
        }
    }
    else {
        var j = i - 1
        while j > 0  {
            let jBitCount = j.bitsSetCount
            assert(jBitCount != iBitCount, "i = \(i): \(j) is next smaller with \(jBitCount) one bits\n", file: "")
            j -= 1
        }
    }
    if let larger = larger {
        let largerBitCount = larger.bitsSetCount
        assert(larger > i, "i = \(i), larger = \(larger)", file: "")
        assert(largerBitCount == iBitCount, "i = \(i), iBitCount = \(iBitCount), larger = \(larger) largerBitCount = \(largerBitCount)", file: "")
        var j = i + 1
        while j < larger {
            let jBitCount = j.bitsSetCount
            assert(jBitCount != iBitCount, "\(jBitCount) == \(iBitCount) for \(j) \(i) \(larger)")
            j += 1
        }
    }
    else {
        var j = i + 1
        while j < UInt.max  {
            let jBitCount = j.bitsSetCount
            assert(jBitCount != iBitCount, "i = \(i): \(j) is next larger with \(jBitCount) one bits\n", file: "")
            j += 1
        }
    }
}

