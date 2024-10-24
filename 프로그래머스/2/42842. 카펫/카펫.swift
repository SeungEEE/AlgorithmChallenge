import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    let total = brown + yellow
    
    for h in 1...Int(sqrt(Double(total))) {
        if total % h == 0 {
            let w = total / h
            
            if (w - 2) * (h - 2) == yellow {
                return [w, h]
            }
        }
    }
    return []
}