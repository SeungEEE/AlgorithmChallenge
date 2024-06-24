import Foundation

func solution(_ cipher:String, _ code:Int) -> String {
    let array = cipher.map { String($0) }
    var result = ""
    for index in 0...cipher.count - 1 {
        if(index + 1) % code == 0 {
            result += array[index]
        }
    }
    return result
}