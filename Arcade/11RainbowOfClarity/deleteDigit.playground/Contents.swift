import UIKit

func deleteDigit(n: Int) -> Int {
    var numbers = [Int]()
    
    var offsetInt = 0
    for char in String(n) {
        let removeIndex = String(n).index(String(n).startIndex, offsetBy: offsetInt)
        var nMutableCopy = String(n)
        nMutableCopy.remove(at: removeIndex)
        numbers.append(Int(nMutableCopy)!)
        offsetInt += 1
    }
    
    return numbers.max()!
}

let inputs = [
    152,
    1001
]

let expectedOutputs = [
    52,
    101
]

for i in 0..<inputs.count {
    let output = deleteDigit(n: inputs[i])
    
    print("output\(i) \(output), expected: \(expectedOutputs[i])")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}
