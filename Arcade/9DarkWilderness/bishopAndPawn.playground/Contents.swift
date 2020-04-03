import UIKit

func bishopAndPawn(bishop: String, pawn: String) -> Bool {
    let bishopColIndex = bishop.index(bishop.startIndex, offsetBy: 0)
    let bishopCol: String = String(bishop[bishopColIndex])
    let bishopColInt: Int = Int(UnicodeScalar(bishopCol)!.value)
    let bishopRowIndex = bishop.index(bishop.startIndex, offsetBy: 1)
    let bishopRow: String = String(bishop[bishopRowIndex])
    let bishopRowInt: Int = Int(bishopRow)!
    
    let pawnColIndex = pawn.index(pawn.startIndex, offsetBy: 0)
    let pawnCol: String = String(pawn[pawnColIndex])
    let pawnColInt: Int = Int(UnicodeScalar(pawnCol)!.value)
    let pawnRowIndex = pawn.index(pawn.startIndex, offsetBy: 1)
    let pawnRow: String = String(pawn[pawnRowIndex])
    let pawnRowInt: Int = Int(pawnRow)!
    
    if isDiagonalTopLeft(bishopCol: bishopColInt, bishopRow: bishopRowInt, pawnCol: pawnColInt, pawnRow: pawnRowInt) {
        return true
    } else if isDiagonalTopRight(bishopCol: bishopColInt, bishopRow: bishopRowInt, pawnCol: pawnColInt, pawnRow: pawnRowInt) {
        return true
    } else if isDiagonalBottomLeft(bishopCol: bishopColInt, bishopRow: bishopRowInt, pawnCol: pawnColInt, pawnRow: pawnRowInt) {
        return true
    } else if isDiagonalBottomRight(bishopCol: bishopColInt, bishopRow: bishopRowInt, pawnCol: pawnColInt, pawnRow: pawnRowInt) {
        return true
    }
    
    return false
}

func isDiagonalTopLeft(bishopCol: Int, bishopRow: Int, pawnCol: Int, pawnRow: Int) -> Bool {
    if bishopCol > pawnCol && pawnRow > bishopRow && bishopCol - pawnCol == pawnRow - bishopRow {
        return true
    }
    return false
}

func isDiagonalTopRight(bishopCol: Int, bishopRow: Int, pawnCol: Int, pawnRow: Int) -> Bool {
    if pawnCol > bishopCol && pawnRow > bishopRow && pawnCol - bishopCol == pawnRow - bishopRow {
        return true
    }
    return false

}

func isDiagonalBottomLeft(bishopCol: Int, bishopRow: Int, pawnCol: Int, pawnRow: Int) -> Bool {
    if bishopCol > pawnCol && bishopRow > pawnRow && bishopCol - pawnCol == bishopRow - pawnRow {
        return true
    }
    return false
}

func isDiagonalBottomRight(bishopCol: Int, bishopRow: Int, pawnCol: Int, pawnRow: Int) -> Bool {
    if pawnCol > bishopCol && bishopRow > pawnRow && pawnCol - bishopCol == bishopRow - pawnRow {
        return true
    }
    return false
    
}

let inputs = [
    ["a1", "c3"],
    ["h1", "h3"]
]

let expectedOutputs = [
    true,
    false
]

print(UnicodeScalar("a").value)
print(UnicodeScalar("c").value)

for i in 0..<inputs.count {
    let output = bishopAndPawn(bishop: inputs[i][0], pawn: inputs[i][1])
    
    print("output\(i) \(output)")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}
