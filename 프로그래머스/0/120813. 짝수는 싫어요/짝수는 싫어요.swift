import Foundation

func solution(_ n:Int) -> [Int] {
    var answer = [Int]()
    
    for i in 1...n {
        if i % 2 == 1 {
            answer.append(i)
        }
    }
    return answer
}