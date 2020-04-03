import UIKit

func digitDegree(n: Int) -> Int {
    var digitDegree = 0
    var stringN = String(n)
    while stringN.count != 1 {
        digitDegree += 1
        var sum = 0
        for digitChar in stringN {
            let digit = Int(String(digitChar))!
            sum += digit
        }
        stringN = String(sum)
    }
    
    return digitDegree
}

let inputs = [
    5,
    100,
    91
]

let expectedOutputs = [
    0,
    1,
    2
]


for i in 0..<inputs.count {
    let output = digitDegree(n: inputs[i])
    
    print("output\(i) \(output)")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}
