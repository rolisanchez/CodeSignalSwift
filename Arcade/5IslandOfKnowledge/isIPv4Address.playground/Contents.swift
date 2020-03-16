import UIKit

func isIPv4Address(inputString: String) -> Bool {
    
    var quads = [Int]()
    var dotsCount = 0
    var currentIntStr = ""
    
    for i in 0..<inputString.count {
        let index = inputString.index(inputString.startIndex, offsetBy: i)
        let char = inputString[index]
        
        if char == "." {
            dotsCount += 1
            if let currentInt = Int(currentIntStr) {
                quads.append(currentInt)
            }
            currentIntStr = ""
        } else {
            if currentIntStr == "0" {
                currentIntStr = ""
                break
            }
            
            currentIntStr.append(char)
            if i == inputString.count - 1 {
                if let currentInt = Int(currentIntStr) {
                    quads.append(currentInt)
                }
            }
        }
    }
    print("quads \(quads)")
    guard let max = quads.max() else { return false }
    
    return (max <= 255 && quads.count == 4 && dotsCount == 3)
}


//print("testint \(Int("000"))")

let inputs = [
//    "172.16.254.1",
//    "172.316.254.1",
//    ".254.255.0",
    "64.233.161.00",
    "01.233.161.131",
    "0..1.0.0"
]

let expectedOutputs = [
//    true,
//    false,
//    false,
    false,
    false,
    false
]


for i in 0..<inputs.count {
    let output = isIPv4Address(inputString: inputs[i])
    print("output\(i) \(output)")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}
