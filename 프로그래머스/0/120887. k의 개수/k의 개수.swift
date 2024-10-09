import Foundation

func solution(_ i:Int, _ j:Int, _ k:Int) -> Int {
    var str = ""
    for i in (i...j) {
        str += String(i)
    }
    
    let result = str.filter {
        String($0) == String(k)
    }
    return result.count
}