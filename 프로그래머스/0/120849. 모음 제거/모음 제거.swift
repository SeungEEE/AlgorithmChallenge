import Foundation

func solution(_ my_string:String) -> String {
    let array = ["a", "e", "i", "o", "u"]
    let result = my_string.filter { 
         array.contains(String($0)) == false
    }
    return result
}