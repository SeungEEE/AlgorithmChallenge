import Foundation

func solution(_ s1:[String], _ s2:[String]) -> Int {
    var count = 0
    
    for i in s2 {
        if s1.contains(i){
            count += 1
        }
    }
    
    return count
}