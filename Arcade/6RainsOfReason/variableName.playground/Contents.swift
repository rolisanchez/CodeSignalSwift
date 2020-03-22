import UIKit

func variableName(name: String) -> Bool {
    let pattern = #"^[a-zA-Z0-9_]*$"#
    let regex = try! NSRegularExpression(pattern: pattern, options: NSRegularExpression.Options.caseInsensitive)
    let range = NSMakeRange(0, name.count)
    let remaining = regex.stringByReplacingMatches(in: name, options: [], range: range, withTemplate: "")
    if remaining.count > 0 {
        return false
    }
    let firstChar = name[name.startIndex]
    if Int(String(firstChar)) != nil {
        return false
    }
    return true
}


let inputs = [
    "var_1__Int",
    "qq-q",
    "2w2",
    " variable",
    "va[riable0",
    "variable0"
]

let expectedOutputs = [
    true,
    false,
    false,
    false,
    false,
    true
]

for i in 0..<inputs.count {
    let output = variableName(name: inputs[i])
    print("output\(i) \(output)")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}
