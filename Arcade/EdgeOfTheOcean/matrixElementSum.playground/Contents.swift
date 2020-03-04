func matrixElementsSum(matrix: [[Int]]) -> Int {
    let rows = matrix.count
    let cols = matrix[0].count
    var totalSum = 0
    
    for col in 0..<cols {
        var colSum = 0
        for row in (0..<rows).reversed() {
            let element = matrix[row][col]
            if element != 0 {
                colSum += element
            } else {
                colSum = 0
            }
        }
        totalSum += colSum
    }
    return totalSum
}

let inputs = [
    [[0,1, 1, 2],
     [0, 5, 0, 0],
     [2, 0, 3, 3]],
    [[1, 1, 1, 0],
     [0, 5, 0, 1],
     [2, 1, 3, 10]]
]
let expectedOutputs = [
    9,
    9
]

for i in 0..<inputs.count {
    let output = matrixElementsSum(matrix: inputs[i])
    print("output\(i) \(output)")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}
