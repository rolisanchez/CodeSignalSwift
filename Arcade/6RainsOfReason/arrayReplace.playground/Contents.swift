import UIKit

func arrayReplace(inputArray: [Int], elemToReplace: Int, substitutionElem: Int) -> [Int] {
    var changeArray = inputArray
    for i in 0..<changeArray.count {
        if changeArray[i] == elemToReplace {
            changeArray[i] = substitutionElem
        }
    }
    return changeArray
}


let inputs = [
    [[1, 2, 1], 1, 3],
    [[1, 2, 3, 4, 5], 3, 0],
    [[1, 1, 1], 1, 10]
]

let expectedOutputs = [
    [3, 2, 3],
    [1, 2, 0, 4, 5],
    [10, 10, 10]
]

for i in 0..<inputs.count {
    let output = arrayReplace(inputArray: inputs[i][0] as! [Int], elemToReplace: inputs[i][1] as! Int, substitutionElem: inputs[i][2] as! Int)
    print("output\(i) \(output)")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}
