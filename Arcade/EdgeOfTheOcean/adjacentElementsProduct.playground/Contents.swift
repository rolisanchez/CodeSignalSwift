import UIKit

func makeArrayConsecutive2(statues: [Int]) -> Int {
    var statuesNeeded = 0
    let sortedStatues = statues.sorted()
    print("sortedStatues \(sortedStatues)")
    return statuesNeeded
}

let input1 = [6, 2, 3, 8]
let expectedOutput1 = 3
let output1 = makeArrayConsecutive2(statues: input1)

print("output1 \(output1)")

output1 == expectedOutput1 ? print("OK") : print("BAD")
