import Foundation

func solution(_ citations:[Int]) -> Int {
    let sortedCite = citations.sorted(by: >)
    
    for (index, citation) in sortedCite.enumerated() {
        if index >= citation {
            return index
        }
    }
    
    return sortedCite.count
}