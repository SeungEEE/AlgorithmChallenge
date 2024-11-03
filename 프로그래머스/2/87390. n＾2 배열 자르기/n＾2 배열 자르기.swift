import Foundation

func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
    var result = [Int]()
    var (y, x) = (0, 0)
    
    for i in Int(left)...Int(right) {
        x = (i % n) + 1
        y = (i / n) + 1

        result.append(y > x ? y : x)
    }
    
    return result
}