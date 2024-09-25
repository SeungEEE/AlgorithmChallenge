import Foundation

func solution(_ spell:[String], _ dic:[String]) -> Int {
    for i in dic {
        let temp = spell.filter {
            i.contains($0)
        }
        if temp.sorted().joined(separator: "") == spell.sorted().joined(separator: "") {
            return 1
        }
    }
    return 2
}