import UIKit

func digitsProduct(product: Int) -> Int {
    if(product==0) {
        return 10
    }
    var i = product
    while(i < 6000) {
        var digits: [Int] = Array(String(i)).map { Int(String($0))! }
        var p1 = digits.reduce(1, *)
        if(p1 == product) {
            return i
        }
        i += 1
    }
    
    return -1
}


let inputs = [
    12,
    19,
    450
]

let expectedOutputs = [
    26,
    -1,
    2559
]

for i in 0..<inputs.count {
    let output = digitsProduct(product: inputs[i])
    
    print("output\(i) \(output), expected: \(expectedOutputs[i])")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}
