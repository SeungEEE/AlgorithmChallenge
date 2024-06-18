import Foundation

func solution(_ s:String) -> Int {
    var result = 0
    var previous = 0
    let remove = s.components(separatedBy: " ")
    
    remove.forEach {
        if $0 == "Z" {
            result -= previous
        } else {
            result += Int($0)!
            previous = Int($0)!
        }
    }
    return result
}