func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    let filtered = arr.filter { $0 % divisor == 0 }.sorted()
    
    return filtered.isEmpty ? [-1] : filtered
}