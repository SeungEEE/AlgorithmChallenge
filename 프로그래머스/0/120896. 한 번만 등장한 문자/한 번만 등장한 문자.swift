import Foundation

func solution(_ s:String) -> String {
    var result = [String]()
    let array = s.map { String($0) }
    let str = Set(array)
    
    str.forEach { element in
                 let elements = array.filter {
                     $0 == element
                 }
                 if elements.count == 1 {
                     result.append(element)
                 }
                }
    
    return String(result.joined(separator: "").sorted())
}