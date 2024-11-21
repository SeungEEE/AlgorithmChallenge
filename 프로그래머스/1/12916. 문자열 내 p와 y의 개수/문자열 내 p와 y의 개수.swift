import Foundation

func solution(_ s:String) -> Bool
{
    let lowercased = s.lowercased()
    let pCount = lowercased.filter { $0 == "p" }.count
    let yCount = lowercased.filter { $0 == "y" }.count
    
    return pCount == yCount
}