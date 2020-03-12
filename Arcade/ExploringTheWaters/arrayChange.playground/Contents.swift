import UIKit

func arrayChange(inputArray: [Int]) -> Int {
    var numberOfMoves = 0
    var editableArray = inputArray
    for i in 0..<editableArray.count-1{
        let difference = editableArray[i] - editableArray[i+1]
        if difference >= 0 {
            editableArray[i+1] += difference+1
            numberOfMoves += difference+1
        }
    }
    return numberOfMoves
}


let inputs = [
    [1, 1, 1],
    [-1000, 0, -2, 0],
    [2, 1, 10, 1],
    [2, 3, 3, 5, 5, 5, 4, 12, 12, 10, 15]
    
]

let expectedOutputs = [
    3,
    5,
    12,
    13
]

for i in 0..<inputs.count {
    let output = arrayChange(inputArray: inputs[i])
    print("output\(i) \(output)")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}
