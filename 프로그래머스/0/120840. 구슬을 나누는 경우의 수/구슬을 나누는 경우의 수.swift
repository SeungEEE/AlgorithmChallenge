import Foundation

func solution(_ balls:Int, _ share:Int) -> Int {
    if (balls == share) { return 1}
   
    return Int(round(factorial(balls) / (factorial(balls - share) * factorial(share))))
}

func factorial(_ num:Int) -> Double {
    var result = 1.0
    
    for i in 1...num {
        result *= Double(i)
    }
    
    return result
}