import UIKit

func longestDigitsPrefix(inputString: String) -> String {
    var currentLongesDigitString = ""
    var shouldResetLongesDigitString = false
    
    for char in inputString {
        if Int(String(char)) == nil {
            break
        } else {
            currentLongesDigitString.append(char)
        }
    }
    
    print("currentLongesDigitString \(currentLongesDigitString)")
    return currentLongesDigitString
}

let inputs = [
    "123aa1",
    "0123456789",
    "  3) always check for whitespaces",
    
]

let expectedOutputs = [
    "123",
    "0123456789",
    ""
]


for i in 0..<inputs.count {
    let output = longestDigitsPrefix(inputString: inputs[i])
    
    print("output\(i) \(output)")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}
