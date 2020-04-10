import UIKit

func longestWord(text: String) -> String {
    var words = [String]()
    var currentWord = ""
    for char in text {
        if char.isLetter {
            currentWord.append(char)
        } else {
            if currentWord != "" {
                words.append(currentWord)
            }
            currentWord = ""
        }
    }
    // Append last word
    if currentWord != "" {
        words.append(currentWord)
    }
    return words.max { $1.count > $0.count }!
}

let inputs = [
    "Ready, steady, go!",
    "Ready[[[, steady, go!",
    "ABCd",
    "To be or not to be",
    "You are the best!!!!!!!!!!!! CodeFighter ever!"
]

let expectedOutputs = [
    "steady",
    "steady",
    "ABCd",
    "not",
    "CodeFighter"
]

for i in 0..<inputs.count {
    let output = longestWord(text: inputs[i])
    
    print("output\(i) \(output), expected: \(expectedOutputs[i])")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}
