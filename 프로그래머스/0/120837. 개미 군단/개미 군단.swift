import Foundation

func solution(_ hp:Int) -> Int {
    var result = 0
    var hp = hp
    
    result += hp / 5
    hp %= 5
    result += hp / 3
    hp %= 3
    result += hp
    
    return result
}