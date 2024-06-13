import Foundation

func solution(_ n:Int) -> Int {
    var factorial = 1
        for i in 1...n {
            factorial *= i
            if factorial == n {
                return i
            } else if factorial > n {
                return i-1
            }
        }
        return 1
}