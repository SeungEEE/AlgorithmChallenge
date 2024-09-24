import Foundation

func solution(_ sides:[Int]) -> Int {
    var result = 0
    for _ in (sides.max()! - sides.min()! + 1)..<(sides.max()!) {
        result += 1
    }
    
    for _ in (sides.max()!)..<(sides.max()! + sides.min()!) {
        result += 1
    } 
    
    return result
}