import UIKit

func evenDigitsOnly(n: Int) -> Bool {
    for char in String(n) {
        if char.wholeNumberValue! % 2 != 0 {
            return false
        }
    }
    return true
}

let inputs = [
    248622,
    642386,
    248842
]

let expectedOutputs = [
    true,
    false,
    true
]

for i in 0..<inputs.count {
    let output = evenDigitsOnly(n: inputs[i])
    print("output\(i) \(output)")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}
