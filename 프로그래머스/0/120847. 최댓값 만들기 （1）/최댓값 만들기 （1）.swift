import Foundation

func solution(_ numbers:[Int]) -> Int {
    let num = numbers.sorted(by: >)
    return num[0] * num[1]
}