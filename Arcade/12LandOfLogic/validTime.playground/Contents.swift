import UIKit

func validTime(time: String) -> Bool {
    var hoursStr = ""
    var minutesStr = ""
    
    var appendHour = true
    for char in time {
        if char == ":" {
            appendHour = false
        } else {
            if appendHour == true {
                hoursStr.append(char)
            } else {
                minutesStr.append(char)
            }
        }
    }
    if Int(hoursStr)! < 0 || Int(hoursStr)! > 23 {
        return false
    }
    
    if Int(minutesStr)! < 0 || Int(minutesStr)! > 59 {
        return false
    }
    
    return true
}

let inputs = [
    "13:58",
    "25:51",
    "02:76",
    "24:00"
]

let expectedOutputs = [
    true,
    false,
    false,
    false
]

for i in 0..<inputs.count {
    let output = validTime(time: inputs[i])
    
    print("output\(i) \(output), expected: \(expectedOutputs[i])")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}
