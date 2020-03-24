import UIKit

func chessBoardCellColor(cell1: String, cell2: String) -> Bool {
    let col1 = Int((cell1.first?.asciiValue)!)
    let col2 = Int((cell2.first?.asciiValue)!)
    let indexRow = cell1.index(cell1.startIndex, offsetBy: 1)
    let row1 = Int(String(cell1[indexRow]))!
    let row2 = Int(String(cell2[indexRow]))!

    let firstColor = getCellColor(colAscii: col1, rowNum: row1)
    let secondColor = getCellColor(colAscii: col2, rowNum: row2)
   
    
    return firstColor == secondColor
}

enum CellColor {
    case dark, light
}
func getCellColor(colAscii: Int, rowNum: Int) -> CellColor {
    // "A" column ascii value is 65 (odd), "B" is 66 (even)
    // Odd columns start on dark
    // Even start on light
    // Flip colors if col is odd ad row is even, or the opposite
    if colAscii % 2 == 0 {
        if rowNum % 2 == 0 {
            return .dark
        }
        return .light
    } else {
        if rowNum % 2 == 0 {
            return .light
        }
        return .dark
    }
}

let inputs = [
    ["A1", "C3"],
    ["A1", "H3"],
    ["A1", "A2"],
]

let expectedOutputs = [
    true,
    false,
    false
]

for i in 0..<inputs.count {
    let output = chessBoardCellColor(cell1: inputs[i][0], cell2: inputs[i][1])
    print("output\(i) \(output)")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}
