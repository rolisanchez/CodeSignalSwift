import UIKit

func chessKnight(cell: String) -> Int {
    let colIndex = cell.index(cell.startIndex, offsetBy: 0)
    let col = UnicodeScalar(String(cell[colIndex]))?.value
    let rowIndex = cell.index(cell.startIndex, offsetBy: 1)
    let row = Int(String(cell[rowIndex]))
    
    var differentMoves = 0
    // Check top and bottom for one column less
    if col! - 1 >= 97 {
        // Top
        if row! + 2 <= 8 {
            differentMoves += 1
        }
        // Bottom
        if row! - 2 >= 1 {
            differentMoves += 1
        }
    }
    // Check top and bottom for two columns less
    if col! - 2 >= 97 {
        // Top
        if row! + 1 <= 8 {
            differentMoves += 1
        }
        // Bottom
        if row! - 1 >= 1 {
            differentMoves += 1
        }
    }
    // Check top and bottom for one column more
    if col! + 1 <= 104 {
        // Top
        if row! + 2 <= 8 {
            differentMoves += 1
        }
        // Bottom
        if row! - 2 >= 1 {
            differentMoves += 1
        }
    }
    // Check top and bottom for two columns more
    if col! + 2 <= 104 {
        // Top
        if row! + 1 <= 8 {
            differentMoves += 1
        }
        // Bottom
        if row! - 1 >= 1 {
            differentMoves += 1
        }
    }
    return differentMoves
}


let inputs = [
    "a1",
    "c2",
    "d4"
]

let expectedOutputs = [
    2,
    6,
    8
]

for i in 0..<inputs.count {
    let output = chessKnight(cell: inputs[i])
    
    print("output\(i) \(output), expected: \(expectedOutputs[i])")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}

