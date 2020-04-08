import UIKit

func isMAC48Address(inputString: String) -> Bool {
    var currentLetterIndex = 0
    
    // Exactly 17 characters
    if inputString.count != 17 {
        return false
    }
    
    for char in inputString {
        // Has to be Hyphen
        if currentLetterIndex == 2 {
            if char != "-" {
                return false
            }
            currentLetterIndex = 0
        } else {
            // Detect if it's a digit
            if Int(String(char)) != nil {
                currentLetterIndex += 1
                continue
            }
            // Detect if it's a letter between A (65) or F -> Unicode Scalar values
            else if UnicodeScalar(String(char))!.value >= 65 && UnicodeScalar(String(char))!.value <= 70 {
                currentLetterIndex += 1
                continue
            }
                // Other letters
            else {
                return false
            }
            
        }
    }
    return true
}


let inputs = [
   "00-1B-63-84-45-E6",
   "Z1-1B-63-84-45-E6",
   "not a MAC-48 address",
   "02-03-04-05-06-07-"
]

let expectedOutputs = [
    true,
    false,
    false,
    false
]


for i in 0..<inputs.count {
    let output = isMAC48Address(inputString: inputs[i])
    
    print("output\(i) \(output), expected: \(expectedOutputs[i])")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}
