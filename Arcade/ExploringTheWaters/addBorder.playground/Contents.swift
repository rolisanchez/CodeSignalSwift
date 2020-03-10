import UIKit

func addBorder(picture: [String]) -> [String] {
    var mutablePicture = picture
    
    for i in 0..<mutablePicture.count {
        var element = mutablePicture[i]
        element = "*" + element + "*"
        mutablePicture[i] = element
    }
    
    let topDownBorder = String(repeating: "*", count: mutablePicture[0].count)
    mutablePicture = [topDownBorder] + mutablePicture + [topDownBorder]
    return mutablePicture
}

let inputs = [
    ["abc",
     "ded"]
]

let expectedOutputs = [
    ["*****",
     "*abc*",
     "*ded*",
     "*****"]
]


for i in 0..<inputs.count {
    let output = addBorder(picture: inputs[i])
    print("output\(i) \(output)")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}
