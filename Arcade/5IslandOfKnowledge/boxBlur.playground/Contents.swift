import UIKit

func boxBlur(image: [[Int]]) -> [[Int]] {
    var rowIncrease = image.count - 3
    var colIncrease = image[0].count - 3
    var columns = Array(repeating: 0, count: 1+colIncrease)
    var returnImage = Array(repeating: columns, count: 1+rowIncrease)
    
    for initRow in 0...rowIncrease{
        for initCol in 0...colIncrease {
            var localSum = 0
            for row in initRow..<(initRow+3) {
                for col in initCol..<(initCol+3) {
                    localSum += image[row][col]
                }
            }
            returnImage[initRow][initCol] = (localSum/9)
        }
    }
    return returnImage
}

let inputs = [
    [[1,1,1],
     [1,7,1],
     [1,1,1]],
    [[0,18,9],
     [27,9,0],
     [81,63,45]],
    [[36,0,18,9],
     [27,54,9,0],
     [81,63,72,45]],
    [[7,4,0,1],
     [5,6,2,2],
     [6,10,7,8],
     [1,4,2,0]]
]

let expectedOutputs = [
    [[1]],
    [[28]],
    [[40, 30]],
    [[5,4],
     [4,4]]
]

for i in 0..<inputs.count {
    let output = boxBlur(image: inputs[i])
    print("output\(i) \(output)")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}
