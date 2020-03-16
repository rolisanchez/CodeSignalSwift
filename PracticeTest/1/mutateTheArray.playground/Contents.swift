import UIKit

func mutateTheArray(n: Int, a: [Int]) -> [Int] {
    var b = [Int]()
    for i in 0..<n {
        print("i \(i)")
        var el1 = 0
        if i > 0 {
            el1 = a[i-1]
        }
        print("el1 \(el1)")
        var el2 =  0
        if i < a.count {
            el2 = a[i]
        }
        print("el2 \(el2)")
        var el3 = 0
        if i < a.count-1 {
            el3 = a[i+1]
        }
        print("el3 \(el3)")
        //b[i] = el1 + el2 + el3
        b.append(el1 + el2 + el3)
    }
    return b
}

let inputs = [
    [5, [4, 0, 1, -2, 3]]
]

let expectedOutputs = [
    [4, 5, -1, 2, 1]
]


for i in 0..<inputs.count {
    let output = mutateTheArray(n: inputs[i][0] as! Int, a: inputs[i][1] as! [Int])
    print("output\(i) \(output)")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}
