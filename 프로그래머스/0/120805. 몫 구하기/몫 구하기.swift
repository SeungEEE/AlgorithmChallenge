import Foundation

func solution(_ num1:Int, _ num2:Int) -> Int {
    
    if (num1 == 0 || num2 == 0) {
        return 0
    } else {
        return num1 / num2
    }
}