import UIKit

func isDigit(symbol: Character) -> Bool {
    return Int(String(symbol)) != nil
}

let inputs: [Character] = [
    "0",
    "-"
]

let expectedOutputs = [
    true,
    false
]


for i in 0..<inputs.count {
    let output = isDigit(symbol: inputs[i])
    
    print("output\(i) \(output), expected: \(expectedOutputs[i])")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}

