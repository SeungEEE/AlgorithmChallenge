import Foundation

func solution(_ emergency:[Int]) -> [Int] {
    let sortedEmergency = emergency.sorted(by:>)
    
    var dic : [Int : Int] = [:]
    var result = [Int]()
    
    for index in 0..<sortedEmergency.count{
        dic[sortedEmergency[index]] = index + 1
    }
    
    for num in emergency{
        result.append(dic[num]!)
    }
    return result
}