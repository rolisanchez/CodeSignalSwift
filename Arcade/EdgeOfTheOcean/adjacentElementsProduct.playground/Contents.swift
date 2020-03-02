import UIKit

func shapeArea(n: Int) -> Int {
    var area = 1
    for i in 1..<n {
        area += 4*(i)
    }
    return area
}

let input1 = 2
let expectedOutput1 = 5
let output1 = shapeArea(n: input1)

print("output1 \(output1)")

output1 == expectedOutput1 ? print("OK") : print("BAD")

let input2 = 3
let expectedOutput2 = 13
let output2 = shapeArea(n: input2)

print("output2 \(output2)")

output2 == expectedOutput2 ? print("OK") : print("BAD")


