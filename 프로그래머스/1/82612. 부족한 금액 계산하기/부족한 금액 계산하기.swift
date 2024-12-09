import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    let total = price * count * (count + 1) / 2
    return Int64(max(total - money, 0))
}