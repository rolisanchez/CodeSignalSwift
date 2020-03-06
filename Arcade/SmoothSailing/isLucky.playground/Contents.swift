import UIKit

func isLucky(n: Int) -> Bool {
    let digits = n.digits
    let chunks = digits.chunked(into: digits.count/2)
    let firstHalf = chunks[0]
    let secondHalf = chunks[1]
    
    return firstHalf.reduce(0, +) == secondHalf.reduce(0, +)
}

extension BinaryInteger {
    var digits: [Int] {
        return String(describing: self).compactMap { Int(String($0)) }
    }
}

extension Array {
    func chunked(into size: Int) -> [[Element]] {
        return stride(from: 0, to: count, by: size).map {
            Array(self[$0 ..< Swift.min($0 + size, count)])
        }
    }
}

let inputs = [
    1230,
    239017
    
]

let expectedOutputs = [
    true,
    false
]

for i in 0..<inputs.count {
    let output = isLucky(n: inputs[i])
    print("output\(i) \(output)")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}
