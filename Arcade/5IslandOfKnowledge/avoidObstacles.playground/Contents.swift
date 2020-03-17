import UIKit

func avoidObstacles(inputArray: [Int]) -> Int {
    let orderedArray = inputArray.sorted()
    var minimalLenght = 1
    var foundMinimal = false
        
    while foundMinimal == false {
        foundMinimal = true
        
        print("minimalLenght \(minimalLenght)")
        for number in inputArray {
            if number % minimalLenght == 0{
                minimalLenght += 1
                foundMinimal = false
                break
            }
        }
    }
    
    return minimalLenght
}


let inputs = [
    [5, 3, 6, 7, 9],
    [2, 3]
]

let expectedOutputs = [
   4,
   4
]


for i in 0..<inputs.count {
    let output = avoidObstacles(inputArray: inputs[i])
    print("output\(i) \(output)")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}
