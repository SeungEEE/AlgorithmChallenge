import Foundation

func solution(_ dots:[[Int]]) -> Int {
    var x1 = abs(dots[0][0] - dots[1][0])
    var y1 = abs(dots[0][1] - dots[1][1])
    var x2 = abs(dots[2][0] - dots[3][0])
    var y2 = abs(dots[2][1] - dots[3][1])
        
    if Double(y1) / Double(x1) == Double(y2) / Double(x2) {
        return 1
    }
        
    x1 = abs(dots[0][0] - dots[2][0])
    y1 = abs(dots[0][1] - dots[2][1])
    x2 = abs(dots[1][0] - dots[3][0])
    y2 = abs(dots[1][1] - dots[3][1])
        
    if Double(y1) / Double(x1) == Double(y2) / Double(x2) {
        return 1
    }
        
    x1 = abs(dots[0][0] - dots[3][0])
    y1 = abs(dots[0][1] - dots[3][1])
    x2 = abs(dots[1][0] - dots[2][0])
    y2 = abs(dots[1][1] - dots[2][1])

    if Double(y1) / Double(x1) == Double(y2) / Double(x2) {
        return 1
    }
        
    return 0
}