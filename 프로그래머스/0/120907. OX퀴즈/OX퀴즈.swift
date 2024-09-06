import Foundation

func solution(_ quiz:[String]) -> [String] {
    return quiz.map {
        var value = 0
        let result = $0.split(separator: " ")
         
        if String(result[1]) == "+" {
            value = Int(String(result[0]))! + Int(String(result[2]))!
        } else {
            value = Int(String(result[0]))! - Int(String(result[2]))!
        }
        
        if value == Int(String(result[4]))! {
            return "O"
        } else {
            return "X"
        }
    }
}

