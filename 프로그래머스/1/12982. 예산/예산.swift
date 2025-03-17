import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var sum = [Int]()
    let d = d.sorted()

    for i in d {
        sum.append(i)
        if sum.reduce(0, +) > budget { 
            sum.removeLast()
            break
        }
    }

    return sum.count
}