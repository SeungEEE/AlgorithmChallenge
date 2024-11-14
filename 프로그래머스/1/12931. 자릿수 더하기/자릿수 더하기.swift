import Foundation

func solution(_ n:Int) -> Int
{
    var answer = 0
    var num = n
    
    while num > 0 {
        answer += num % 10
        num /= 10
    }
    return answer
}