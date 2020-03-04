import UIKit

func allLongestStrings(inputArray: [String]) -> [String] {
    return [""]
}


let inputs = [
    ["aba", "aa", "ad", "vcd", "aba"],
    
]

let expectedOutputs = [
    ["aba", "vcd", "aba"]
]

for i in 0..<inputs.count {
    let output = allLongestStrings(inputArray: inputs[i])
    print("output\(i) \(output)")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}
