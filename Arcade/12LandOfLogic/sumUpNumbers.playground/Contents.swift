import UIKit

func sumUpNumbers(inputString: String) -> Int {
    var numbers = [Int]()
    var currentNumberStr = ""
    for char in inputString {
        // Current char is number
        if Int(String(char)) != nil {
            currentNumberStr.append(char)
        }
        // Current char is not number
        else {
            // Append if there was current number
            if currentNumberStr != "" {
                numbers.append(Int(currentNumberStr)!)
                currentNumberStr = ""
            }
        }
    }
    // Append last number
    if currentNumberStr != "" {
        numbers.append(Int(currentNumberStr)!)
    }
    
    return numbers.reduce(0, +)
}

let inputs = [
    "2 apples, 12 oranges",
    "123450"
]

let expectedOutputs = [
    14,
    123450
]

for i in 0..<inputs.count {
    let output = sumUpNumbers(inputString: inputs[i])
    
    print("output\(i) \(output), expected: \(expectedOutputs[i])")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}
