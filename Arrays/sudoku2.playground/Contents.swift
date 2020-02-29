import UIKit

func sudoku2(grid: [[Character]]) -> Bool {
    let n = grid[0].count
    
    // Check rows
    for row in 0..<n {
        var rowNumberCount = [Character:Int]()
        for col in 0..<n {
            let char = grid[row][col]
            if char != "." {
                if rowNumberCount[char] == nil {
                    rowNumberCount[char] = 0
                }
                rowNumberCount[char]! += 1
                if rowNumberCount[char] == 2 {
                    return false
                }
            }
        }
        
    }
    // Check columns
    for col in 0..<n {
        var colNumberCount = [Character:Int]()
        for row in 0..<n {
            let char = grid[row][col]
            if char != "." {
                if colNumberCount[char] == nil {
                    colNumberCount[char] = 0
                }
                colNumberCount[char]! += 1
                if colNumberCount[char] == 2 {
                    return false
                }
            }
        }
        
    }
    
    // Check subgrids 3*3
//    let rangeCol =  0...2
//    let rangeRow =  0...2
    let ranges = [0...2, 3...5, 6...8]
    for i in 0...2 {
        let rangeRow = ranges[i]
        print("rangeRow \(rangeRow)")
        for j in 0...2 {
            let rangeCol = ranges[j]
            print("rangeCol \(rangeCol)")
            if !checkSubgrid(grid: grid, rangeRow: rangeCol, rangeCol: rangeRow){
                return false
            }
        }
    }
    
    return true
}

func checkSubgrid(grid: [[Character]], rangeRow: ClosedRange<Int>, rangeCol: ClosedRange<Int>) -> Bool {
    var subgridNumberCount = [Character:Int]()
    for row in rangeRow {
        for col in rangeCol {
            let char = grid[row][col]
            print(char,terminator: ", ")
            if char != "." {
                if subgridNumberCount[char] == nil {
                    subgridNumberCount[char] = 0
                }
                subgridNumberCount[char]! += 1
                if subgridNumberCount[char] == 2 {
                    return false
                }
            }
        }
        print("\n")
    }
    print("subgridNumberCount \(subgridNumberCount)")
    return true
}

//let input: [[Character]] = [[".", ".", ".", "1", "4", ".", ".", "2", "."],
//            [".", ".", "6", ".", ".", ".", ".", ".", "."],
//            [".", ".", ".", ".", ".", ".", ".", ".", "."],
//            [".", ".", "1", ".", ".", ".", ".", ".", "."],
//            [".", "6", "7", ".", ".", ".", ".", ".", "9"],
//            [".", ".", ".", ".", ".", ".", "8", "1", "."],
//            [".", "3", ".", ".", ".", ".", ".", ".", "6"],
//            [".", ".", ".", ".", ".", "7", ".", ".", "."],
//            [".", ".", ".", "5", ".", ".", ".", "7", "."]]
//
//
//let expectedOutput = true
//let output = sudoku2(grid: input)
//
//print("output \(output)")
//
//output == expectedOutput ? print("OK") : print("BAD")
//
//let input2: [[Character]] = [[".", ".", ".", ".", "2", ".", ".", "9", "."],
//             [".", ".", ".", ".", "6", ".", ".", ".", "."],
//             ["7", "1", ".", ".", "7", "5", ".", ".", "."],
//             [".", "7", ".", ".", ".", ".", ".", ".", "."],
//             [".", ".", ".", ".", "8", "3", ".", ".", "."],
//             [".", ".", "8", ".", ".", "7", ".", "6", "."],
//             [".", ".", ".", ".", ".", "2", ".", ".", "."],
//             [".", "1", ".", "2", ".", ".", ".", ".", "."],
//             [".", "2", ".", ".", "3", ".", ".", ".", "."]]
//
//let expectedOutput2 = false
//let output2 = sudoku2(grid: input2)
//
//print("output2 \(output2)")
//
//output2 == expectedOutput2 ? print("OK") : print("BAD")

let input3: [[Character]] =   [[".",".",".",".",".",".","5",".","."],
                               [".",".",".",".",".",".",".",".","."],
                               [".",".",".",".",".",".",".",".","."],
                               ["9","3",".",".","2",".","4",".","."],
                               [".",".","7",".",".",".","3",".","."],
                               [".",".",".",".",".",".",".",".","."],
                               [".",".",".","3","4",".",".",".","."],
                               [".",".",".",".",".","3",".",".","."],
                               [".",".",".",".",".","5","2",".","."]]

let expectedOutput3 = false
let output3 = sudoku2(grid: input3)

print("output3 \(output3)")

output3 == expectedOutput3 ? print("OK") : print("BAD")
