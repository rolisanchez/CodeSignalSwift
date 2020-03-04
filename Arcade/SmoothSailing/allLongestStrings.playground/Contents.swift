import UIKit

func allLongestStrings(inputArray: [String]) -> [String] {
    var longestStringArray = [String]()
    var longestStringLength = 0
    
    for str in inputArray {
        if str.count > longestStringLength {
            longestStringLength = str.count
            longestStringArray = [String]()
            longestStringArray.append(str)
        } else if str.count == longestStringLength {
            longestStringArray.append(str)
        }
    }
    return longestStringArray
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
