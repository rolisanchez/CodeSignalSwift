import UIKit

func fileNaming(names: [String]) -> [String] {
    var renamed = [String]()
    for name in names {
        if !renamed.contains(name){
            renamed.append(name)
        }
        // Change the name
        else {
            var tryNum = 1
            var foundNum = false
            while !foundNum {
                if !renamed.contains("\(name)(\(tryNum))") {
                    foundNum = true
                } else {
                    tryNum += 1
                }
            }
            renamed.append("\(name)(\(tryNum))")
        }
    }
    
    return renamed
}

let inputs = [
    ["doc",
     "doc",
     "image",
     "doc(1)",
     "doc"],
    ["a(1)",
     "a(6)",
     "a",
     "a",
     "a",
     "a",
     "a",
     "a",
     "a",
     "a",
     "a",
     "a"]
]

let expectedOutputs = [
    ["doc",
     "doc(1)",
     "image",
     "doc(1)(1)",
     "doc(2)"],
    ["a(1)",
     "a(6)",
     "a",
     "a(2)",
     "a(3)",
     "a(4)",
     "a(5)",
     "a(7)",
     "a(8)",
     "a(9)",
     "a(10)",
     "a(11)"]
]

for i in 0..<inputs.count {
    let output = fileNaming(names: inputs[i])
    
    print("output\(i) \(output), expected: \(expectedOutputs[i])")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}
