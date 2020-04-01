import UIKit

func growingPlant(upSpeed: Int, downSpeed: Int, desiredHeight: Int) -> Int {
    var days = 0
    var plantHeight = 0
    while plantHeight < desiredHeight {
        days += 1
        // Grow during the day
        plantHeight += upSpeed
        if plantHeight >= desiredHeight { break }
        plantHeight -= downSpeed
    }
    return days
}

let inputs = [
    [100, 10, 910],
    [10, 9, 4]
]

let expectedOutputs = [
    10,
    1
]

for i in 0..<inputs.count {
    let output = growingPlant(upSpeed: inputs[i][0], downSpeed: inputs[i][1], desiredHeight: inputs[i][2])
    
    print("output\(i) \(output)")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}
