import UIKit

func alphabeticShift(inputString: String) -> String {
    var returnString = ""
    for char in inputString {
        if let nextLetter = nextLetter(String(char)) {
            returnString += nextLetter
        } else {
             returnString += "a"
        }
    }
    return returnString
}

func nextLetter(_ letter: String) -> String? {
    // Check if string is build from exactly one Unicode scalar:
    guard let uniCode = UnicodeScalar(letter) else {
        return nil
    }
    switch uniCode {
        case "a" ..< "z":
            return String(UnicodeScalar(uniCode.value + 1)!)
        default:
            return nil
    }
}

let inputs = [
    "crazy",
    "z"
]

let expectedOutputs = [
    "dsbaz",
    "a"
]

for i in 0..<inputs.count {
    let output = alphabeticShift(inputString: inputs[i])
    print("output\(i) \(output)")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}

