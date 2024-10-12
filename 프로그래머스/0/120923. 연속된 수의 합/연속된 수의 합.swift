import Foundation

func solution(_ num:Int, _ total:Int) -> [Int] {
    let a = ((2 * total / num) - num + 1) / 2
    return (a..<a+num).map{ $0 }
}