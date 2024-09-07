import Foundation

func solution(_ str1:String, _ str2:String) -> Int {
    let result = str1.components(separatedBy: str2).joined()
    
    if result != str1 {
        return 1
    }
    return 2
}