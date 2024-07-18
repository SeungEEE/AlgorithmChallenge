import Foundation

func solution(_ num:Int, _ k:Int) -> Int {
    let nums = String(num).map { String($0) }
        
    if nums.contains(String(k)) == false {
        return -1
    }
        
    for i in 0..<nums.count {
        if nums[i] == String(k) {
            return i+1
        }
    }
        
    return -1
}