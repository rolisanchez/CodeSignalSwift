import UIKit

func arrayMaximalAdjacentDifference(inputArray: [Int]) -> Int {
    var maximalAdjacentDiff = 0
    
    for i in 1..<inputArray.count-1 {
        let abs1 = abs(inputArray[i]-inputArray[i-1])
        let abs2 = abs(inputArray[i]-inputArray[i+1])
        
        if abs1 > maximalAdjacentDiff {
            maximalAdjacentDiff = abs1
        }
        
        if abs2 > maximalAdjacentDiff {
            maximalAdjacentDiff = abs2
        }
    }
    return maximalAdjacentDiff
}


let inputs = [
    [2, 4, 1, 0],
    [1, 1, 1, 1],
    [-1, 4, 10, 3, -2],
    [10, 11, 13],
    [-2, -2, -2, -2, -2]
]

let expectedOutputs = [
    3,
    0,
    7,
    2,
    0
]


for i in 0..<inputs.count {
    let output = arrayMaximalAdjacentDifference(inputArray: inputs[i])
    print("output\(i) \(output)")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}
