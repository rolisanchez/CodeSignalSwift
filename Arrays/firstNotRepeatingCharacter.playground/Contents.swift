import UIKit

func firstNotRepeatingCharacter(s: String) -> Character {
    var characterCount = [Character:Int]()
    var firstNotRepeatingCharacter = Character("_")
    for char in s {
        if characterCount[char] == nil {
            characterCount[char] = 0
        }
        characterCount[char]! += 1
    }
    
    for char in s {
        if characterCount[char] == 1 {
            firstNotRepeatingCharacter = char
            break
        }
    }
    
//    for (char, count) in characterCount {
//        if count == 1 {
//            print("firstNotRepeatingCharacter \(firstNotRepeatingCharacter)")
//            firstNotRepeatingCharacter = char
//            break
//        }
//    }
//    print("characterCount \(characterCount)")
    return firstNotRepeatingCharacter
}

let str = "abcdefghijklmnopqrstuvwxyziflskecznslkjfabe"
firstNotRepeatingCharacter(s: str)
