import Foundation

func solution(_ my_string:String, _ letter:String) -> String {
    let result = Array(my_string).filter{ String($0) != letter }
    return result.map {String($0)}.joined()
}