import UIKit

func isBeautifulString(inputString: String) -> Bool {
    var charCount = [Character:Int]()
    
    for char in inputString {
        if charCount[char] != nil {
            charCount[char]! += 1
        } else {
            charCount[char] = 1
        }
    }
    let dict = charCount.sorted { $0.0 < $1.0 }
    
    if charCount["a"] == 0 {
        return false
    }
    
    var lastChar: Character = "a"
    var lastCount = 0
    
    for (char, count) in dict {
        if char != "a" {
            // Check if character is one before
            let lastCharInt = Int(UnicodeScalar(String(lastChar))!.value)
            let thisCharInt = Int(UnicodeScalar(String(char))!.value)
            
            if thisCharInt - lastCharInt != 1 {
                return false
            }
            
            // Check char count before
            if count > lastCount {
                return false
            }
            lastChar = char
            lastCount = count
        } else {
            // This is "a" char
            lastCount = count
        }
    }
    
    return true
}

let inputs = [
    "bbbaacdafe",
    "aabbb",
    "bbc",
    "bbbaa",
    "abcdefghijklmnopqrstuvwxyzz",
    "abcdefghijklmnopqrstuvwxyz",
    "zaa"
]

let expectedOutputs = [
    true,
    false,
    false,
    false,
    false,
    true,
    false
]


for i in 0..<inputs.count {
    let output = isBeautifulString(inputString: inputs[i])
    
    print("output\(i) \(output)")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}
