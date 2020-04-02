import UIKit

func knapsackLight(value1: Int, weight1: Int, value2: Int, weight2: Int, maxW: Int) -> Int {
    var maxValue = 0
    
    if weight1 + weight2 <= maxW {
        maxValue = value1 + value2
    } else {
        var canTakeValues = [Int]()
        if weight1 <= maxW {
            canTakeValues.append(value1)
        }
        if weight2 <= maxW {
            canTakeValues.append(value2)
        }
        if let max = canTakeValues.max() {
            maxValue = max
        }
        
    }
    return maxValue
}

let inputs = [
    [10, 5, 6, 4, 8],
    [10, 5, 6, 4, 9]
]

let expectedOutputs = [
    10,
    16
]
//
for i in 0..<inputs.count {
    let output = knapsackLight(value1: inputs[i][0], weight1: inputs[i][1], value2: inputs[i][2], weight2: inputs[i][3], maxW: inputs[i][4])
    
    print("output\(i) \(output)")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}
