import UIKit

func minesweeper(matrix: [[Bool]]) -> [[Int]] {
    var columns = Array(repeating: 0, count: matrix[0].count)
    var rows = Array(repeating: columns, count: matrix.count)
    
    for row in 0..<matrix.count {
        for col in 0..<matrix[0].count {

            var neighborsCount = 0
            // Check up
            if (row-1) >= 0 && matrix[row-1][col] == true {
                neighborsCount += 1
            }
            // Check down
            if (row+1) < matrix.count && matrix[row+1][col] == true {
                neighborsCount += 1
            }
            // Check left
            if (col-1) >= 0 && matrix[row][col-1] == true {
                neighborsCount += 1
            }
            // Check right
            if (col+1) < matrix[0].count && matrix[row][col+1] == true {
                neighborsCount += 1
            }
            // Check diagonal up left
            if (row-1) >= 0 && (col-1) >= 0 && matrix[row-1][col-1] == true {
                neighborsCount += 1
            }
            // Check diagonal up right
            if (row-1) >= 0 && (col+1) < matrix[0].count && matrix[row-1][col+1] == true {
                neighborsCount += 1
            }
            // Check diagonal down left
            if (row+1) < matrix.count && (col-1) >= 0 && matrix[row+1][col-1] == true {
                neighborsCount += 1
            }
            // Check diagonal down right
            if (row+1) < matrix.count && (col+1) < matrix[0].count && matrix[row+1][col+1] == true {
                neighborsCount += 1
            }
            
            rows[row][col] = neighborsCount
        }
    }
    return rows
}

let inputs = [
    [[true,false,false],
     [false,true,false],
     [false,false,false]],
    
    [[false,false,false],
     [false,false,false]],
    
    [[true,false,false,true],
     [false,false,true,false],
     [true,true,false,true]]
]

let expectedOutputs = [
    [[1,2,1],
     [2,1,1],
     [1,1,1]],
    
    [[0,0,0],
     [0,0,0]],
    
    [[0,2,2,1],
     [3,4,3,3],
     [1,2,3,1]]
]

for i in 0..<inputs.count {
    let output = minesweeper(matrix: inputs[i])
    print("output\(i) \(output)")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}
