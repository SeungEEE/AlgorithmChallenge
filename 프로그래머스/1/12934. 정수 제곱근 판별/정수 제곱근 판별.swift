import Foundation

func solution(_ n:Int64) -> Int64 {
    let num = Int64(sqrt(Double(n)))
    
    if num * num == n {
        return (num + 1) * (num + 1)  
    } else {
        return -1 
    }
}