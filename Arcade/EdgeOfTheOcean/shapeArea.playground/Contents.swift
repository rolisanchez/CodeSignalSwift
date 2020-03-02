import UIKit

func adjacentElementsProduct(inputArray: [Int]) -> Int {
    var largestProduct = Int.min
    for i in 0..<inputArray.count-1 {
        let product = inputArray[i]*inputArray[i+1]
        if product > largestProduct { largestProduct = product }
    }
    return largestProduct
}

let input1 = [3, 6, -2, -5, 7, 3]
let expectedOutput1 = 21
let output1 = adjacentElementsProduct(inputArray: input1)

print("output1 \(output1)")

output1 == expectedOutput1 ? print("OK") : print("BAD")

let input2 = [-23, 4, -3, 8, -12]
let expectedOutput2 = -12
let output2 = adjacentElementsProduct(inputArray: input2)

print("output2 \(output2)")

output2 == expectedOutput2 ? print("OK") : print("BAD")
