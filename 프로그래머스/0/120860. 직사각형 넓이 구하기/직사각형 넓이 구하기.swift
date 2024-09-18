import Foundation

func solution(_ dots:[[Int]]) -> Int {
    let dot = dots[0]
    var width = 0
    var height = 0
    for i in 0..<dots.count {
        if dot[0] == dots[i][0] {
            height = abs(dot[1] - dots[i][1])
        }
        
        if dot[1] == dots[i][1] {
            width = abs(dot[0] - dots[i][0])
        }
    }
    return width * height
}