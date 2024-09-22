import Foundation

func solution(_ my_string:String) -> Int {
    var result = 0
    let nums = my_string.map { i -> String in
    	if i.isNumber {
            return String(i)
        }
        return " "
    }.joined(separator: "").split(separator: " ")
    
    nums.forEach({
        result += Int($0)!
    })
    return result
}