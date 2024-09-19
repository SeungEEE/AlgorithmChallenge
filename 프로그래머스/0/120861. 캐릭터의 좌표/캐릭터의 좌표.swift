import Foundation

func solution(_ keyinput:[String], _ board:[Int]) -> [Int] {
    var result = [0,0]
        
    for i in keyinput {
        if i == "left" && (result[0] > ((board[0]/2) * -1)) {
            result[0] -= 1
        } else if i == "right" && (result[0] < board[0]/2) {
            result[0] += 1
        } else if i == "down" && (result[1] > ((board[1]/2) * -1)) {
            result[1] -= 1
        } else if i == "up" && (result[1] < board[1]/2) {
            result[1] += 1
        }
    }
    return result
}