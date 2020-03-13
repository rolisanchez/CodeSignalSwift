import UIKit

func areEquallyStrong(yourLeft: Int, yourRight: Int, friendsLeft: Int, friendsRight: Int) -> Bool {
    return ([yourLeft, yourRight].max() == [friendsLeft, friendsRight].max()) && ([yourLeft, yourRight].min() == [friendsLeft, friendsRight].min())
}


let inputs = [
    [10, 15, 15, 10],
    [15, 10, 15, 10],
    [15, 10, 15, 9],
    [10, 5, 5, 10],
    [10, 15, 5, 20]
]

let expectedOutputs = [
    true,
    true,
    false,
    true,
    false
]


for i in 0..<inputs.count {
    let output = areEquallyStrong(yourLeft: inputs[i][0], yourRight: inputs[i][1], friendsLeft: inputs[i][2], friendsRight: inputs[i][3])
    print("output\(i) \(output)")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}
