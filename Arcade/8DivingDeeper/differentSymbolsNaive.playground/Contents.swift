import UIKit

func differentSymbolsNaive(s: String) -> Int {
    var charsSet = Set<Character>()
    for char in s {
        charsSet.insert(char)
    }
    return charsSet.count
}

let inputs = [
    "cabca",
    "aba",
    "ccccccccccc"
]

let expectedOutputs = [
    3,
    2,
    1
]

for i in 0..<inputs.count {
    let output = differentSymbolsNaive(s: inputs[i])
    print("output\(i) \(output)")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}

