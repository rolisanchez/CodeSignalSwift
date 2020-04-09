import UIKit

func lineEncoding(s: String) -> String {
    var outputString = ""
    var lastCharacter: Character = " "
    var lastCount = 0
    
    for char in s {
        if char != lastCharacter {
            if lastCount == 1 {
                outputString.append(lastCharacter)
            } else if lastCount > 1 {
                outputString += String(lastCount)
                outputString.append(lastCharacter)
            }
            lastCharacter = char
            lastCount = 1
        } else {
            lastCount += 1
        }
    }
    
    // Also append last characters
    if lastCount == 1 {
        outputString.append(lastCharacter)
    } else if lastCount > 1 {
        outputString += String(lastCount)
        outputString.append(lastCharacter)
    }
    
    return outputString
}

let inputs = [
    "aabbbc",
    "abbcabb",
    "abcd"
]

let expectedOutputs = [
    "2a3bc",
    "a2bca2b",
    "abcd"
]


for i in 0..<inputs.count {
    let output = lineEncoding(s: inputs[i])
    
    print("output\(i) \(output), expected: \(expectedOutputs[i])")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}
