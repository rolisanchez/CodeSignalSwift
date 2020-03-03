import UIKit

func almostIncreasingSequence(sequence: [Int]) -> Bool {
//    var largest = Int.min
//    var removedElement = false
//    for i in 1..<sequence.count {
//        if (sequence[i - 1] >= sequence[i]) {
//            print("removedElement sequence[i] \(sequence[i])")
//            if removedElement {
//                return false
//
//            } else {
//                removedElement = true
//            }
//        }
//        else {
//            if sequence[i] > largest {
//                largest = sequence[i]
//                print("largest \(largest)")
//            } else {
//                print("removedElement sequence[i] \(sequence[i])")
//                if removedElement {
//                    return false
//
//                } else {
//                    removedElement = true
//                    largest = sequence[i]
//                }
//            }
//        }
//    }
//    return true
    var removed = 0
    for i in 1..<sequence.count {
        if(sequence[i] <= sequence[i-1]) {
            removed += 1
            if(removed > 1) { return false }
            if (i-2 >= 0 && i+1 < sequence.count && sequence[i] <= sequence[i-2] && sequence[i+1] <= sequence[i-1]) { return false }
        }
    }
    return true
}

let inputs = [
    [1, 3, 2, 1],
    [1, 3, 2],
    [1, 2, 1, 2],
    [1, 2, 3, 4, 5, 3, 5, 6],
    [10, 1, 2, 3, 4, 5],
    [1, 2, 5, 3, 5]
]
let expectedOutputs = [
    false,
    true,
    false,
    false,
    true,
    true
]

for i in 0..<inputs.count {
    let output = almostIncreasingSequence(sequence: inputs[i])
    print("output\(i) \(output)")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}



