import Foundation

func solution(_ score:[[Int]]) -> [Int] {
    var result: [Int] = []
    let total = score.map { $0.reduce(0, +) }
    for i in total {
        result.append(total.filter { $0 > i }.count + 1)
    }
    return result
}