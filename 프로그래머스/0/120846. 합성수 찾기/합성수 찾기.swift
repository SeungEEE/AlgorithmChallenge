import Foundation

func solution(_ n:Int) -> Int {
    if n < 4 { 
        return 0
    }
    
    var result = 0
    
    for i in (4...n) {
        for j in (2...i/2) {
            if i % j == 0 {
                result += 1
                break
            }
        }
    }
    return result
}