import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    var result = 0

    for num in left...right {
        if Int(Double(num).squareRoot()) * Int(Double(num).squareRoot()) == num {
            result -= num
        } else {
            result += num
        }
    }

    return result
}