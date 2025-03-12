func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var answer: [[Int]] = []
    
    for i in 0..<arr1.count {
        answer.append([])
        
        for j in 0..<arr1[i].count {
            answer[i].append(arr1[i][j] + arr2[i][j])
        }
    }
    return answer
}