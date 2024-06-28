import Foundation

func solution(_ my_string:String, _ num1:Int, _ num2:Int) -> String {
    var str = my_string.map { String($0) }
        let temp = str[num1]
        str[num1] = str[num2]
        str[num2] = temp
        return str.joined()
}