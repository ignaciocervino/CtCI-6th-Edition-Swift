import Foundation

/*:
 2.5
 Two numbers are represented by two singly linked lists in which each node is a digit. 
 The lists have the digits in reverse order, so that the 1's digit is at the head of the list. 
 Sum the two lists and return the result as a list — e.g.:
 
 Input: `7 -> 1 -> 6`  +  `5 -> 9 -> 2, i.e. 617 + 295` \
 Output: `2 -> 1 -> 9,  i.e. 912`
 */

extension List where Element: BinaryInteger {
    
    func sum(integerListReversed: List) -> List {
        
    }
    
    private func sum(rightSide: List, carry: Element, result: List) -> List {
        
    }
}

public extension BinaryInteger {
    
    func digitsArray() -> [Self] {
        return digitsArray(digits: [])
    }
    
    private func digitsArray(digits: [Self]) -> [Self] {
        guard self > 0 else { return digits }
        let digit = self % 10
        let quotient = self / 10
        return quotient.digitsArray(digits: [digit] + digits)
    }
}

func testSumListsReversed() {
    
    let x = Int.random(in: 0...1000)
    let y = Int.random(in: 0...100)
    
    let leftList = List(array: x.digitsArray().reversed())
    let rightList = List(array: y.digitsArray().reversed())
    let summedList = leftList.sum(integerListReversed: rightList)
    
    let xySumDigits = (x + y).digitsArray()
    assert(summedList == List(array: xySumDigits.reversed()), "\(summedList) != xyDigits)")
}

ApplyConcurrently(iterations: 2.pow(5)).apply {
    testSumListsReversed()
}


/*:
 Follow Up: Suppose the digits in the lists are in order. Sum the two lists and return the result as a
 list
 */

extension List where Element: FixedWidthInteger {
    
    func sum(integerListOrdered: List) -> List {
        
    }
    
    private func reversedSum(rightSide: List, exponent: Int, result: Element = 0) -> Element {
        
    }
}

func testSumOrdered() {
    let x = Int.random(in: 0...1000)
    let y = Int.random(in: 0...100)
    let leftList = List(array: x.digitsArray())
    let rightList = List(array: y.digitsArray())
    let summedList = leftList.sum(integerListOrdered: rightList)
    let xySum = x + y
    assert(summedList == List(array: xySum.digitsArray()), "\(summedList) != xyDigits)")
}


ApplyConcurrently(iterations: 2.pow(5)).apply {
    testSumOrdered()
}
