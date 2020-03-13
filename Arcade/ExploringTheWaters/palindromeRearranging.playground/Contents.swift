import UIKit

func palindromeRearranging(inputString: String) -> Bool {
    var characterCount = [Character:Int]()
    
    for char in inputString {
        if characterCount[char] == nil {
            characterCount[char] = 0
        }
        characterCount[char]! += 1
    }
    
    var oddCount = 0
    for (_, value) in characterCount {
        if value % 2 != 0 {
            oddCount += 1
        }
        if oddCount > 1 {
            return false
        }
    }
    return true
}

let inputs = [
    "aabb",
    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaabc",
    "abbcabb",
    "zyyzzzzz",
    "z"
]

let expectedOutputs = [
    true,
    false,
    true,
    true,
    true
]

for i in 0..<inputs.count {
    let output = palindromeRearranging(inputString: inputs[i])
    print("output\(i) \(output)")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}

