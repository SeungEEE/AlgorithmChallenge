import Foundation

func solution(_ n:Int) -> [Int] {
    var num = n
    var result = [Int]()
    var count = 2
    
    while num > 1 {
        if num % count == 0 {
            num /= count 
            result.append(count)
        } else {
            count += 1
        }
    }
    
    return Array(Set(result)).sorted() 
}