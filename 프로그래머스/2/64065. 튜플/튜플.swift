import Foundation

func solution(_ s:String) -> [Int] {
    let element = s.dropFirst(2).dropLast(2).components(separatedBy: "},{")
    let tupleSet = element.map { $0.split(separator: ",").map { Int($0)! } }
    
    let sortedSet = tupleSet.sorted { $0.count < $1.count }
    
    var result = [Int]()
    var seen = Set<Int>()
    
    for tuple in sortedSet {
        for num in tuple {
            if !seen.contains(num) {
                result.append(num)
                seen.insert(num)
            }
        }
    }
    
    return result
}