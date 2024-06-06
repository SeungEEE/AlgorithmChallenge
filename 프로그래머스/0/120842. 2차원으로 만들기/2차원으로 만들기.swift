import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [[Int]] {
    var result = Array(repeating: Array(repeating: 0, count: n), count: num_list.count / n)
    var count = 0
    
    for i in result.indices {
        for j in result[i].indices {
            result[i][j] = num_list[count]
            count += 1
        }
    }
    return result
}