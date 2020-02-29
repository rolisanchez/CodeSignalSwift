import UIKit

func rotateImage(a: [[Int]]) -> [[Int]] {
    let n = a[0].count
    let emptyRow = Array(repeating: 0, count: n)
    var rotatedImage = Array(repeating: emptyRow, count: n)
    for i in 0..<n {
        for j in 0..<n {
            rotatedImage[j][n-1-i] = a[i][j]
        }
    }
    return rotatedImage
}


let input = [[1, 2, 3],
         [4, 5, 6],
         [7, 8, 9]]

let expectedOutput = [[7, 4, 1],
                      [8, 5, 2],
                      [9, 6, 3]]

let output = rotateImage(a: input)

print("output \(output)")

output == expectedOutput ? print("OK") : print("BAD")
