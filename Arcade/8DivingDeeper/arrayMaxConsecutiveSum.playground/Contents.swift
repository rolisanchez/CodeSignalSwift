import UIKit

func arrayMaxConsecutiveSum(inputArray: [Int], k: Int) -> Int {
    var sums = [Int]()
    
    for i in 0..<inputArray.count-k+1 {
        var sum = 0
        for j in i..<i+k {
            sum += inputArray[j]
        }
        sums.append(sum)
    }
    return sums.max()!
}

let inputs = [
    [2, 3, 5, 1, 6],
    [2, 4, 10, 1],
    [1, 3, 2, 4]
]

let inputs2 = [
    2,
    2,
    3
]

let expectedOutputs = [
    8,
    14,
    9
]

for i in 0..<inputs.count {
    let output = arrayMaxConsecutiveSum(inputArray: inputs[i], k: inputs2[i])
    print("output\(i) \(output)")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}

