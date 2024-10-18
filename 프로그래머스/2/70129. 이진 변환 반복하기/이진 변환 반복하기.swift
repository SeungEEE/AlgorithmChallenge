import Foundation

func solution(_ s:String) -> [Int] {
    var s = s
    var count = 0
    var time = 0
    while s != "1" {
        let replaceCount = s.filter { $0 == "0" }.count
        count += replaceCount

        s = String(s.count - replaceCount, radix: 2)
        time += 1
    }
    
    return [time, count]
}