import Foundation

func solution(_ my_string:String) -> String {
    let result = my_string.map { str in
            if str.isUppercase == true {
                return str.lowercased()
            }
            return str.uppercased()
        }.joined()
    return result
}