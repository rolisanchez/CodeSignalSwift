import UIKit

func commonCharacterCount(s1: String, s2: String) -> Int {
    var countCommonCharacters = 0
    var s2ToRemove = s2
    for i in 0..<s1.count {
        let indexS1 = s1.index(s1.startIndex, offsetBy: i)
        let element = s1[indexS1]
        if let indexS2 = s2ToRemove.firstIndex(of: element){
            countCommonCharacters += 1
            s2ToRemove.remove(at: indexS2)
        }

    }
    return countCommonCharacters
}

let inputs = [
    ["aabcc", "adcaa"],
    
]

let expectedOutputs = [
    3
]

for i in 0..<inputs.count {
    let output = commonCharacterCount(s1: inputs[i][0], s2: inputs[i][1])
    print("output\(i) \(output)")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}
