func solution(_ a:Int, _ b:Int) -> Int64 {
    let (start, end) = a < b ? (a, b) : (b, a)
    let n = end - start + 1 
    return Int64(n * (start + end) / 2)
}