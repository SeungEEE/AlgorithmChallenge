import Foundation

func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
     var maxDungeons = 0

    func dfs(_ remainingK: Int, _ visited: [Bool], _ count: Int) {
        maxDungeons = max(maxDungeons, count)
        
        for i in 0..<dungeons.count {
            let minRequired = dungeons[i][0]
            let consume = dungeons[i][1]
            
            if !visited[i] && remainingK >= minRequired {
                var newVisited = visited
                newVisited[i] = true
                dfs(remainingK - consume, newVisited, count + 1)
            }
        }
    }

    dfs(k, Array(repeating: false, count: dungeons.count), 0)
    
    return maxDungeons
}