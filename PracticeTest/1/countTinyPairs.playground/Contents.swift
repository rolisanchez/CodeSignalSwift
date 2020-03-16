import UIKit

func countTinyPairs(a: [Int], b: [Int], k: Int) -> Int {
    var countTinyPairs = 0
    
    for i in 0..<a.count {
        let left = String(a[i])
        let right = String(b[a.count-1-i])
        let concat = Int(left+right)!
        if concat < k {
            countTinyPairs += 1
        }
    }
    return countTinyPairs
}



let inputs = [
    [[1, 2, 3], [1, 2, 3], 31]
]

let expectedOutputs = [
    2
]


for i in 0..<inputs.count {
    let output = countTinyPairs(a: inputs[i][0] as! [Int], b: inputs[i][1] as! [Int], k: inputs[i][2] as! Int)
    print("output\(i) \(output)")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}
