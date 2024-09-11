import Foundation

func solution(_ array:[Int]) -> Int {
    let result = array.map { String($0) }.joined().filter { String($0) == "7"}
    return result.count
}