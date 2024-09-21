import Foundation

func solution(_ polynomial: String) -> String {
    var count = 0
    var num = 0

    for i in polynomial.split(separator: " ") {
        if i.contains("x") {
            count += (i == "x" ? 1 : (Int(i.replacingOccurrences(of: "x", with: "")) ?? 0))
        } else if i != "+" {
            num += Int(i) ?? 0
        }
    }
    return (count != 0 ? count > 1 ? "\(count)x" : "x" : "") + (num != 0 ? "\((count != 0 ? " + " : ""))\(num)" : count == 0 ? "0" : "")
}