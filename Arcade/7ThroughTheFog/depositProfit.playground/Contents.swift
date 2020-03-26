import UIKit

func depositProfit(deposit: Int, rate: Int, threshold: Int) -> Int {
    let increaseRate: Double = (1+(Double(rate)/100))
    // deposit*(increaseRate)^n >= threshold -> Find out n
    let n = log(Double(threshold)/Double(deposit))/log(Double(increaseRate))
    print("n ", n)
    var roundedN: Double = round(n)
    if Double(deposit) * pow(increaseRate, roundedN) < Double(threshold) {
        return Int(roundedN+1)
    }
    return Int(roundedN)
}

print("2.5^3.2 ", 2^3)
let inputs = [
    [100, 20, 170],
    [100, 1, 101],
    [1, 100, 64],
    [20, 20, 50],
]

let expectedOutputs = [
    3,
    1,
    6,
    6
]

for i in 0..<inputs.count {
    let output = depositProfit(deposit: inputs[i][0], rate: inputs[i][1], threshold: inputs[i][2])
    print("output\(i) \(output)")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}

