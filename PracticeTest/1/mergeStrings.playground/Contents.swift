import UIKit

func mergeStrings(s1: String, s2: String) -> String {
    var returnString = ""
    var countS1 = [Character:Int]()
    var countS2 = [Character:Int]()
    
    for i in 0..<max(s1.count, s2.count) {
        if i < s1.count {
            let indexS1 = s1.index(s1.startIndex, offsetBy: i)
            let char1 = s1[indexS1]
            if countS1[char1] != nil {
                countS1[char1]! += 1
            } else {
                countS1[char1] = 1
            }
        }
        
        if i < s2.count {
            let indexS2 = s2.index(s2.startIndex, offsetBy: i)

            let char2 = s2[indexS2]
            
            if countS2[char2] != nil {
                countS2[char2]! += 1
            } else {
                countS2[char2] = 1
            }
        }
    
    }
    
    var editableS1 = s1
    var editableS2 = s2
    
    while (editableS1.count != 0 || editableS2.count != 0) {
        var char1: Character = " "
        var char2: Character = " "
        var indexS1: String.Index!
        var indexS2: String.Index!
        
        if  editableS1.count > 0 {
            indexS1 = editableS1.index(editableS1.startIndex, offsetBy: 0)
            char1 = editableS1[indexS1]
        }
        
        if editableS2.count > 0 {
            indexS2 = editableS2.index(editableS2.startIndex, offsetBy: 0)
            char2 = editableS2[indexS2]
        }
        
        if char1 == " " {
            returnString.append(char2)
            editableS2.remove(at: indexS2)
        } else if char2 == " " {
            returnString.append(char1)
            editableS1.remove(at: indexS1)
        } else if countS1[char1]! < countS2[char2]! {
            returnString.append(char1)
            editableS1.remove(at: indexS1)
        } else if countS1[char1]! > countS2[char2]! {
            returnString.append(char2)
            editableS2.remove(at: indexS2)
        } else if char2 > char1{
            returnString.append(char1)
            editableS1.remove(at: indexS1)
        } else {
            returnString.append(char2)
            editableS2.remove(at: indexS2)
        }
    }
    
    return returnString
}


let inputs = [
    ["dce", "cccbd"],
    ["super", "tower"]
]

let expectedOutputs = [
    "dcecccbd",
    "stouperwer"
   
]


for i in 0..<inputs.count {
    let output = mergeStrings(s1: inputs[i][0], s2: inputs[i][1])
    print("output\(i) \(output)")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}
