import UIKit

func spiralNumbers(n: Int) -> [[Int]] {
    var currentNum = 1
    let row = Array(repeating: 0, count: n)
    var matrix = Array(repeating: row, count: n)
    var startRow = 0
    var finishRow = n
    var startCol = 0
    var finishCol = n
    var currentRow = 0
    var currentCol = 0
    while currentNum <= n*n {
        // Go Right
        for i in startCol..<finishCol {
            currentCol = i
            matrix[currentRow][currentCol] = currentNum
            currentNum += 1
        }
        if currentNum > n*n {
            break
        }
        startRow += 1
        // Go Down
        for i in startRow..<finishRow {
            currentRow = i
            matrix[currentRow][currentCol] = currentNum
            currentNum += 1
        }
        finishCol -= 1
        // Go Left
        for i in (startCol..<finishCol).reversed() {
            currentCol = i
            matrix[currentRow][currentCol] = currentNum
            currentNum += 1
        }
        finishRow -= 1
        // Go Up
        for i in (startRow..<finishRow).reversed() {
            currentRow = i
            matrix[currentRow][currentCol] = currentNum
            currentNum += 1
        }
        startCol += 1
    }

    return matrix
}

let inputs = [
    3,
    5
]

let expectedOutputs = [
    [[1,2,3],
     [8,9,4],
     [7,6,5]],
    [[1,2,3,4,5],
     [16,17,18,19,6],
     [15,24,25,20,7],
     [14,23,22,21,8],
     [13,12,11,10,9]]
]

for i in 0..<inputs.count {
    let output = spiralNumbers(n: inputs[i])
    
    print("output\(i) \(output), expected: \(expectedOutputs[i])")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}
