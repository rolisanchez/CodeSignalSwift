import UIKit

func messageFromBinaryCode(code: String) -> String {
    
    var currentAscii = ""
    var message = ""
    
    for char in code {
        if currentAscii.count == 8 {
            let ascii = convertToAscii(binaryBits: currentAscii)
            message += ascii
            currentAscii = ""
        }
        currentAscii.append(char)
    }
    // Append last character
    let ascii = convertToAscii(binaryBits: currentAscii)
    message += ascii
    
    return message
}

func convertToAscii(binaryBits: String) -> String {
    var index = binaryBits.startIndex
    var result: String = ""
    for _ in 0..<binaryBits.count/8 {
        let nextIndex = binaryBits.index(index, offsetBy: 8)
        let charBits = binaryBits[index..<nextIndex]
        result += String(UnicodeScalar(UInt8(charBits, radix: 2)!))
        index = nextIndex
    }
    
    return result
}

let inputs = [
    "010010000110010101101100011011000110111100100001",
    "01001101011000010111100100100000011101000110100001100101001000000100011001101111011100100110001101100101001000000110001001100101001000000111011101101001011101000110100000100000011110010110111101110101"
]

let expectedOutputs = [
    "Hello!",
    "May the Force be with you"
]

for i in 0..<inputs.count {
    let output = messageFromBinaryCode(code: inputs[i])
    
    print("output\(i) \(output), expected: \(expectedOutputs[i])")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}
