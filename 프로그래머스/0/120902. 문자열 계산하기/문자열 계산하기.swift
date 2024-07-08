import Foundation

func solution(_ my_string:String) -> Int {
     let splited = my_string.split(separator: " ")
     var result = Int(String(splited[0]))!
        
     for i in stride(from: 1, to: splited.count-1, by: 2) {
         if splited[i] == "+" {
             result += Int(String(splited[i+1]))!
         } else {
             result -= Int(String(splited[i+1]))!
         }
     }
    return result
}