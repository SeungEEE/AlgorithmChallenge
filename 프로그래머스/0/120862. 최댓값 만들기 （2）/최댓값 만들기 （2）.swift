import Foundation

func solution(_ numbers:[Int]) -> Int {
    var num = numbers.sorted()
    let n1 = num[0] * num[1]
    
    num.reverse()
    let n2 = num[0] * num[1]
    
    return max(n1, n2)
}