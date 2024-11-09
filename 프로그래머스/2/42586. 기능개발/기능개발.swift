import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var needDays = [Int]() 
    var result = [Int]()       
    
    for i in 0..<progresses.count {
        let remain = 100 - progresses[i]
        let days = Int(ceil(Double(remain) / Double(speeds[i])))
        needDays.append(days)
    }
    
    var currentMaxDay = needDays[0]
    var count = 1 
    
    for i in 1..<needDays.count {
        if needDays[i] <= currentMaxDay {
            count += 1
        } else {
            result.append(count) 
            count = 1           
            currentMaxDay = needDays[i] 
        }
    }
    
    result.append(count)
    
    return result
}