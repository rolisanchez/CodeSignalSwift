import UIKit

func firstDuplicate(a: [Int]) -> Int {
    var numberCount = [Int:Int]()
    var firstDuplicate: Int!
    for number in a {
        if numberCount[number] == nil {
            numberCount[number] = 0
        }
        numberCount[number]! += 1
        if numberCount[number] == 2 {
            firstDuplicate = number
            break
        }
    }
    return firstDuplicate
}

let arr = [2, 1, 3, 5, 3, 2]
firstDuplicate(a: arr)
