import UIKit

func alternatingSums(a: [Int]) -> [Int] {
    var teamToggle = true
    var team1Weight = 0
    var team2Weight = 0
    for weight in a {
        if teamToggle {
            team1Weight += weight
        } else {
            team2Weight += weight
        }
        teamToggle.toggle()
    }
    
    return [team1Weight, team2Weight]
}


let inputs = [
    [50, 60, 60, 45, 70]
    
]

let expectedOutputs = [
    [180, 105]
]

for i in 0..<inputs.count {
    let output = alternatingSums(a: inputs[i])
    print("output\(i) \(output)")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}

