func solution(_ num:Int) -> Int {
    var count = 0
    var current = num
    
    while current != 1 {
        if count >= 500 {
            return -1
        }
        
        if current % 2 == 0 {
            current /= 2
        } else {
            current = current * 3 + 1
        }
        
        count += 1
    }
    
    return count
}