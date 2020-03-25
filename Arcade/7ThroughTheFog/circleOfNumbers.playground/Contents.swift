import UIKit

func circleOfNumbers(n: Int, firstNumber: Int) -> Int {
    var opposite: Int = firstNumber + (n / 2)
    if opposite / n >= 1 { // when you turn right it goes over 0
        opposite -= ((opposite / n) * n)
    }
    return opposite
}

let inputs = [
    [10, 2],
    [10, 7],
    [4, 1]
]

let expectedOutputs = [
    7,
    2,
    3
]

for i in 0..<inputs.count {
    let output = circleOfNumbers(n: inputs[i][0], firstNumber: inputs[i][1])
    print("output\(i) \(output)")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}
