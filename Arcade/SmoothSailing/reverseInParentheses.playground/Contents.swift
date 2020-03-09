import UIKit

func reverseInParentheses(inputString: String) -> String {
    var returnString = inputString
    
    var bracketPairs = [(Int, Int)]()
    var leftBracketStacks = [Int]()
    
    for i in 0..<inputString.count {
        let index = inputString.index(inputString.startIndex, offsetBy: i)
        let element = inputString[index]
        if element == "(" {
            leftBracketStacks.append(i)
        } else if element == ")" {
            var leftBracket = leftBracketStacks.popLast()!
            bracketPairs.append((leftBracket, i))
        }
        
    }
    
    
    for (left, right) in bracketPairs {
        
        let leftIndex = inputString.index(returnString.startIndex, offsetBy: left)
        let rightIndex = inputString.index(returnString.startIndex, offsetBy: right)
        let reverseStringRange = leftIndex..<rightIndex
        let stringToReverse = String(returnString[reverseStringRange])
        let reverseSring = String(stringToReverse.reversed())
        let part1Range = returnString.startIndex..<leftIndex
        let part1 = String(returnString[part1Range])
        let part2Range = rightIndex..<returnString.endIndex
        let part2 = String(returnString[part2Range])
        returnString = part1 + reverseSring + part2

    }
    returnString = returnString.replacingOccurrences(of: "(", with: "")
    returnString = returnString.replacingOccurrences(of: ")", with: "")
    
    return returnString
}


let inputs = [
    "(bar)",
    "foo(bar)baz",
    "foo(bar)baz(blim)",
    "foo(bar(baz))blim"
    
]

let expectedOutputs = [
    "rab",
    "foorabbaz",
    "foorabbazmilb",
    "foobazrabblim"
]

for i in 0..<inputs.count {
    let output = reverseInParentheses(inputString: inputs[i])
    print("output\(i) \(output)")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}
