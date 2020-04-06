import UIKit

// Given an array of the numbers of votes given to each of the candidates so far, and an integer k equal to the number of voters who haven't cast their vote yet, find the number of candidates who still have a chance to win the election.

// The winner of the election must secure strictly more votes than any other candidate. If two or more candidates receive the same (maximum) number of votes, assume there is no winner at all.

func electionsWinners(votes: [Int], k: Int) -> Int {
    let mostVotesSoFar = votes.max()!
    var candidatesWithChanceToWin = 0
    
    if k == 0 {
        if votes.filter({$0 == mostVotesSoFar}).count == 1 {
            candidatesWithChanceToWin = 1
        }
    } else {
        for candidateVotes in votes {
            if candidateVotes + k > mostVotesSoFar {
                candidatesWithChanceToWin += 1
            }
        }
    }
    
    
    return candidatesWithChanceToWin
}

let inputs1 = [
    [2, 3, 5, 2],
    [1, 3, 3, 1, 1],
    [5, 1, 3, 4, 1],
    [1, 1, 1, 1]
]

let inputs2 = [
    3,
    0,
    0,
    1
]

let expectedOutputs = [
    2,
    0,
    1,
    4
]


for i in 0..<inputs1.count {
    let output = electionsWinners(votes: inputs1[i], k: inputs2[i])
    
    print("output\(i) \(output), expected: \(expectedOutputs[i])")
    output == expectedOutputs[i] ? print("OK") : print("BAD")
}

