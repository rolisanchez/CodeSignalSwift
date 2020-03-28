import UIKit

func d(x: String, y: String) -> Int {
    var a = Array(x.utf8), b = Array(y.utf8), c = 0
    for i in 0..<a.count {
        c += a[i] != b[i] ? 1 : 0
    }
    return c
}

func bruteForce(depth: Int, inputArray a: inout [String]) -> Bool {
    
    if (depth == a.count) {
        for i in 0..<(a.count - 1) {
            if d(x: a[i], y: a[i + 1]) != 1 {
                return false
            }
        }
        return true
    }
    
    for i in depth..<a.count {
        var t = a[depth]
        a[depth] = a[i]
        a[i] = t
        
        if (bruteForce(depth: depth + 1, inputArray: &a)) {
            return true
        }
        
        t = a[depth]
        a[depth] = a[i]
        a[i] = t
    }
    return false
}

func stringsRearrangement(inputArray: [String]) -> Bool {
    var a = inputArray
    return bruteForce(depth: 0, inputArray: &a)
}

let inputs = [
    ["aba", "bbb","bab"],
    ["ab", "bb", "aa"],
    ["q", "q"]
]

let expectedOutputs = [
    false,
    true,
    false
]

for i in 0..<inputs.count {
    let output = stringsRearrangement(inputArray: inputs[i])
    print("output\(i) \(output)")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}

