import UIKit

func findEmailDomain(address: String) -> String {
    var domainString = ""
    var shouldAddToDomain = false
    for char in address {
        if char == "@" {
            shouldAddToDomain = true
            domainString = ""
        } else if shouldAddToDomain {
            domainString.append(char)
        }
    }
    return domainString
}

let inputs = [
    "prettyandsimple@example.com",
    "fully-qualified-domain@codesignal.com",
    "\"very.unusual.@.unusual.com\"@usual.com"
]

let expectedOutputs = [
    "example.com",
    "codesignal.com",
    "usual.com"
]


for i in 0..<inputs.count {
    let output = findEmailDomain(address: inputs[i])
    
    print("output\(i) \(output)")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}
