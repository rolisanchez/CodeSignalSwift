import UIKit

func differentSquares(matrix: [[Int]]) -> Int {
    var differentSquares = Set<[[Int]]>()
    
    for row in 0..<matrix.count-1 {
        for col in 0..<matrix[0].count-1 {
            let matrix = [[matrix[row][col], matrix[row][col+1]], [matrix[row+1][col], matrix[row+1][col+1]]]
            differentSquares.insert(matrix)
        }
    }
    return differentSquares.count
}

let inputs = [
    [[1,2,1],
     [2,2,2],
     [2,2,2],
     [1,2,3],
     [2,2,1]],
    [[9,9,9,9,9],
     [9,9,9,9,9],
     [9,9,9,9,9],
     [9,9,9,9,9],
     [9,9,9,9,9],
     [9,9,9,9,9]],
    [[3]]
]

let expectedOutputs = [
    6,
    1,
    0
]

for i in 0..<inputs.count {
    let output = differentSquares(matrix: inputs[i])
    
    print("output\(i) \(output), expected: \(expectedOutputs[i])")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}
