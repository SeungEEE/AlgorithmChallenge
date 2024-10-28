import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    var countDict = [Int: Int]()
    
    for size in tangerine {
        countDict[size, default: 0] += 1
    }
    
    let sortedCounts = countDict.values.sorted(by: >)
    
    var totalSelected = 0
    var varietyCount = 0
    
    for count in sortedCounts {
        totalSelected += count
        varietyCount += 1
        
        if totalSelected >= k {
            return varietyCount
        }
    }
    
    return varietyCount
}