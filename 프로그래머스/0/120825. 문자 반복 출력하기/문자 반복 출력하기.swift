import Foundation

func solution(_ my_string:String, _ n:Int) -> String {
    var answer = ""
    for s in my_string{        
        answer += String(repeating: String(s), count: n)    
    }     
    return answer
}