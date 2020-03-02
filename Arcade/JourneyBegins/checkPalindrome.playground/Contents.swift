import UIKit

func checkPalindrome(inputString: String) -> Bool {
//    let count = inputString.count
//    let endIndex = inputString.index(inputString.startIndex, offsetBy: (count-1))
//    for i in 0..<count/2 {
//        let index1 = inputString.index(inputString.startIndex, offsetBy: i)
//        let char1 = inputString[index1]
//        let index2 = inputString.index(endIndex, offsetBy: -i)
//        let char2 = inputString[index2]
//        if char1 != char2 { return false }
//    }
    if inputString == String(inputString.reversed()){ return true }
    return false
}


let input1 = "aabaa"
let expectedOutput1 = true
let output1 = checkPalindrome(inputString: input1)

print("output1 \(output1)")

output1 == expectedOutput1 ? print("OK") : print("BAD")


let input2 = "abac"
let expectedOutput2 = false
let output2 = checkPalindrome(inputString: input2)

print("output2 \(output2)")

output2 == expectedOutput2 ? print("OK") : print("BAD")
