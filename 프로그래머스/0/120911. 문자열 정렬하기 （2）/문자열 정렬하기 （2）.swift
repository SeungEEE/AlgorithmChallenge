import Foundation

func solution(_ my_string:String) -> String {
    let result = my_string.map {
        $0.lowercased()
    }.sorted(by: <)
    
    return result.joined()
}