import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    var num1 = 0
    var num2 = 0
    
    for i in num_list {
        if i % 2 == 0 {
            num1 += 1
        } else {
            num2 += 1
        }
    }
    
    return [num1, num2]
}
