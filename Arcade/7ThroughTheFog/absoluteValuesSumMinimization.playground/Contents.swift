import UIKit

func absoluteValuesSumMinimization(a: [Int]) -> Int {
    var diffArray = [Int]()
    for i in 0..<a.count {
        var diff = 0
        for j in 0..<a.count{
            diff += abs(j-i)
        }
        diffArray.append(diff)
    }
    let min = diffArray.min()!
    let index = diffArray.firstIndex(of: min)!
    
    return a[index]
}

let inputs = [
    [2, 4, 7],
    [2, 3],
    [1, 1, 3, 4]
]

let expectedOutputs = [
    4,
    2,
    1
]

for i in 0..<inputs.count {
    let output = absoluteValuesSumMinimization(a: inputs[i])
    print("output\(i) \(output)")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}
