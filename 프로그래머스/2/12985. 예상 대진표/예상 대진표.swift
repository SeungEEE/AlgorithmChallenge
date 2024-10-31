import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int {
    var answer = 0
    var A = a
    var B = b
    
    while A != B {
        A = (A + 1) / 2
        B = (B + 1) / 2
        answer += 1
    }

    return answer
}