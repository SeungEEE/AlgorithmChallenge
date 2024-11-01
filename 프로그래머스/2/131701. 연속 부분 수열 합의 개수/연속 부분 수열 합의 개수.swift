import Foundation

func solution(_ elements:[Int]) -> Int {
    var answer = Set<Int>()
    let n = elements.count
    
    let long = elements + elements
    
    for i in 0..<elements.count {
        var sum = 0
        for j in 0..<elements.count {
            sum += long[i + j]
            answer.insert(sum)
        }
        sum = 0
    }
    return answer.count
}