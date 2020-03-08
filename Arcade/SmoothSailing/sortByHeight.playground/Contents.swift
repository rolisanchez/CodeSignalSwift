import UIKit

func sortByHeight(a: [Int]) -> [Int] {
    var filteredPeople = a.filter { $0 != -1 }
    filteredPeople.sort()
    
    var sortedHeights = [Int]()
    var filteredIndex = 0
    for i in 0..<a.count {
        if a[i] == -1 {
            sortedHeights.append(-1)
        } else {
            sortedHeights.append(filteredPeople[filteredIndex])
            filteredIndex += 1
        }
    }
    
    return sortedHeights
}



let inputs = [
    [-1, 150, 190, 170, -1, -1, 160, 180]
]

let expectedOutputs = [
    [-1, 150, 160, 170, -1, -1, 180, 190]
]

for i in 0..<inputs.count {
    let output = sortByHeight(a: inputs[i])
    print("output\(i) \(output)")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}
