import Foundation

func solution(_ strlist:[String]) -> [Int] {
    var result = [Int]()
    
    for i in 0..<strlist.count {
        result.append(strlist[i].count)
    }
    return result
}