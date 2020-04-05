import UIKit

func (st: String) -> String {
    if isPalindrome(st: st) { return st }
    return String(st[st.startIndex]) + buildPalindrome(st: String(st.dropFirst())) + String(st[st.startIndex])
}

func isPalindrome(st: String) -> Bool {
    return st == String(st.reversed())
}

let inputs = [
    "abcdc",
    "ababab"
]

let expectedOutputs = [
    "abcdcba",
    "abababa"
]


for i in 0..<inputs.count {
    let output = buildPalindrome(st: inputs[i])
    
    print("output\(i) \(output)")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}
