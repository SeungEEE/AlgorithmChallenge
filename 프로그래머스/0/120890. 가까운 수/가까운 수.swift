import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    let sorted = array.sorted()
    var result = (sorted[0], abs(n - sorted[0]))
    
    sorted.forEach {
        if abs(n - $0) < result.1 {
            result = ($0, abs(n-$0))
        }
    }
    return result.0
}