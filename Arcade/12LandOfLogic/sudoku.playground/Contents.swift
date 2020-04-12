import UIKit

func sudoku(grid: [[Int]]) -> Bool {
    let n = grid[0].count
    
    // Check rows
    for row in 0..<n {
        var thisRowNumbers = [Int]()
        for col in 0..<n {
            let num = grid[row][col]
            thisRowNumbers.append(num)
        }
        if !containsAllNums(thisRowNumbers){
            return false
        }
        
    }
    
    // Check columns
    for col in 0..<n {
        var thisColNumbers = [Int]()
        for row in 0..<n {
            let num = grid[row][col]
            thisColNumbers.append(num)
        }
        if !containsAllNums(thisColNumbers){
            return false
        }
    }
    
    // Check subgrids 3*3
    //    let rangeCol =  0...2
    //    let rangeRow =  0...2
    let ranges = [0...2, 3...5, 6...8]
    for i in 0...2 {
        let rangeRow = ranges[i]
        for j in 0...2 {
            let rangeCol = ranges[j]
            var thisGridNumbers = [Int]()

            for row in rangeRow {
                for col in rangeCol {
                    let num = grid[row][col]
                    thisGridNumbers.append(num)
                }
            }
            if !containsAllNums(thisGridNumbers){
                return false
            }
        }
    }
    
    return true
}

func containsAllNums(_ numbersArray: [Int]) -> Bool {
    for i in 1...9 {
        if !numbersArray.contains(i) {
            return false
        }
    }
    return true
}

let inputs = [
    [[1,3,2,5,4,6,9,8,7],
     [4,6,5,8,7,9,3,2,1],
     [7,9,8,2,1,3,6,5,4],
     [9,2,1,4,3,5,8,7,6],
     [3,5,4,7,6,8,2,1,9],
     [6,8,7,1,9,2,5,4,3],
     [5,7,6,9,8,1,4,3,2],
     [2,4,3,6,5,7,1,9,8],
     [8,1,9,3,2,4,7,6,5]],
    [[1,3,2,5,4,6,9,2,7],
     [4,6,5,8,7,9,3,8,1],
     [7,9,8,2,1,3,6,5,4],
     [9,2,1,4,3,5,8,7,6],
     [3,5,4,7,6,8,2,1,9],
     [6,8,7,1,9,2,5,4,3],
     [5,7,6,9,8,1,4,3,2],
     [2,4,3,6,5,7,1,9,8],
     [8,1,9,3,2,4,7,6,5]]
]

let expectedOutputs = [
   true,
   false
]

for i in 0..<inputs.count {
    let output = sudoku(grid: inputs[i])
    
    print("output\(i) \(output), expected: \(expectedOutputs[i])")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}
