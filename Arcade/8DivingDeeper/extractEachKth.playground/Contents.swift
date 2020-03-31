import UIKit

func extractEachKth(inputArray: [Int], k: Int) -> [Int] {
    var returnArray = [Int]()
    
    for i in (0..<inputArray.count) {
        // If it's not multiple, it's in array
        if (i+1) % k != 0 {
            let index = inputArray.index(inputArray.startIndex, offsetBy: i)
            returnArray.append(inputArray[index])
        }
    }
    
    return returnArray
}

let inputs = [
    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
    [1, 1, 1, 1, 1]
]

let inputs2 = [
    3,
    1
]

let expectedOutputs = [
    [1, 2, 4, 5, 7, 8, 10],
    []
]

for i in 0..<inputs.count {
    let output = extractEachKth(inputArray: inputs[i], k: inputs2[i])
    print("output\(i) \(output)")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}
