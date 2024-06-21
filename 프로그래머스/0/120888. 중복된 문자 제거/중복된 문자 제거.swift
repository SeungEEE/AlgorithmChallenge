import Foundation

func solution(_ my_string:String) -> String {
    var result = [String]()
    
    my_string.forEach {
        if result.contains(String($0)) == false {
            result.append(String($0))
        }
    }
    
    return result.joined(separator: "")
}
