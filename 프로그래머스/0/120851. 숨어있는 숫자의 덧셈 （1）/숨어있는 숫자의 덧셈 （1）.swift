import Foundation

func solution(_ my_string:String) -> Int {
    var result = 0
    
    let numbers = my_string.filter { 
        $0.isNumber
    }
    
    numbers.forEach {
        result += Int(String($0))!
    }
    
    return result
}