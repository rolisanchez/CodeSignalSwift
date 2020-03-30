import UIKit

func firstDigit(inputString: String) -> Character {
    for char in inputString {
        if Int(String(char)) != nil {
            return char
        }
    }
    return " "
}

let inputs = [
    "var_1__Int",
    "q2q-q",
    "0ss"
]

let expectedOutputs: [Character] = [
    "1",
    "2",
    "0"
]

for i in 0..<inputs.count {
    let output = firstDigit(inputString: inputs[i])
    print("output\(i) \(output)")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}

