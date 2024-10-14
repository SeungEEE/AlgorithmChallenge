func solution(_ s:String) -> String {
    let numbers = s.split(separator: " ").compactMap{ Int($0) }
    
    if let minNum = numbers.min(), let maxNum = numbers.max() {
    	return "\(minNum) \(maxNum)"
    }
    
    return " "
}