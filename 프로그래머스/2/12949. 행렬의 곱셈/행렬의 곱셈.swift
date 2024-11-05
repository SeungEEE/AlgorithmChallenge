import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    let rows = arr1.count
    let cols = arr2[0].count
    let inner = arr2.count
    
    var result = Array(repeating: Array(repeating:0, count:cols), count: rows)
    
    for i in 0..<rows {
        for j in 0..<cols {
            for k in 0..<inner {
                result[i][j] += arr1[i][k] * arr2[k][j]
            }
        }
    }
    return result
}