import Foundation

func solution(_ order:Int) -> Int {
    let game = String(order).filter {
        ["3", "6", "9"].contains($0) == true
    }
    return game.count
}
