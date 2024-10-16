import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int {
    var ans = 0
    let arrA = A.sorted()
    let arrB = B.sorted(by: >)
    
    for i in 0...A.count - 1{
        ans += arrA[i] * arrB[i]
    }
    return ans
}