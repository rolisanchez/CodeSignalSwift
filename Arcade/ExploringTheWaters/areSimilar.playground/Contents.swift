import UIKit

// Similar if we can swap at most one pair
func areSimilar(a: [Int], b: [Int]) -> Bool {
    
    var needToSwapIndexes = [Int]() // Index + Number
    for i in 0..<a.count {
        if a[i] != b[i]{
            // Need to swap
            needToSwapIndexes.append(i)
            if needToSwapIndexes.count > 2 {
                return false
            }
        }
    }
    
    if needToSwapIndexes.count == 0 {
        return true
    }
    
    let index1 = needToSwapIndexes[0]
    let index2 = needToSwapIndexes[1]
    
    if a[index1] != b[index2] {
        return false
    } else if a[index2] != b[index1] {
        return false
    }
    
    return true
}

let inputs = [
//    [[1, 2, 3], [1, 2, 3]],
//    [[1, 2, 3], [2, 1, 3]],
//    [[1, 2, 2], [2, 1, 1]],
    [[1, 2, 3], [1, 10, 2]]
    
]

let expectedOutputs = [
//    true,
//    true,
//    false,
    false
]


for i in 0..<inputs.count {
    let output = areSimilar(a: inputs[i][0], b: inputs[i][1])
    print("output\(i) \(output)")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}

