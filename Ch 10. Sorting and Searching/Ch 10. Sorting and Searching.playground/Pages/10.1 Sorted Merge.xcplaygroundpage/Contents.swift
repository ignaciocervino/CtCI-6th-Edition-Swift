import Foundation

/*:
 10.1 Given to sorted arrays A and B, merge B into A in sorted order.
 */
extension RandomAccessCollection where Iterator.Element: Comparable, SubSequence.Iterator.Element == Iterator.Element {
  
  func mergeSorted<C: RandomAccessCollection>(sorted: C) -> [Iterator.Element]
    where C.Iterator.Element == Iterator.Element, C.Index == Index {
      
  }
}

var a = (0..<10).map { _ in Int.random(in: 0...100) }
var b = (0..<10).map { _ in Int.random(in: 0...100) }

a = a.sorted()
b = b.sorted()

var m1 = a.mergeSorted(sorted: b)
var m2 = (a + b).sorted()
assert(m1 == m2)
