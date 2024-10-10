import Foundation

func solution(_ A:String, _ B:String) -> Int {
    var array = A.map { String($0) }
    for i in 0...array.count-1 {
        if array.joined(separator: "") == B {
            return i
        }
        
        let last = String(array.removeLast())
        array.insert(last, at: 0)
    }
    return -1
}