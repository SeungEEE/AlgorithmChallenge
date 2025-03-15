import Foundation

func solution(_ t:String, _ p:String) -> Int {
    var result = 0
    var number = Int(p)!
    
    for i in 0...t.count - p.count {
        result += Int(t.map{String($0)} [i..<i+p.count].joined())! <= number ? 1 : 0
    }
    
    return result
}
