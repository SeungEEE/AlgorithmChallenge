import Foundation

func solution(_ s: String) -> Int {
    let n = s.count
    var rotatedArray = Array(s)
    var count = 0
    
    for _ in 0..<n {
        if isValid(rotatedArray) {
            count += 1
        }
        rotatedArray.append(rotatedArray.removeFirst())
    }
    
    return count
}

func isValid(_ s: [Character]) -> Bool {
    var stack = [Character]()
    
    for char in s {
        if char == "(" || char == "[" || char == "{" {
            stack.append(char)
        } else {
            if stack.isEmpty { return false }
            let last = stack.removeLast()
            
            if (char == ")" && last != "(") ||
               (char == "]" && last != "[") ||
               (char == "}" && last != "{") {
                return false
            }
        }
    }
    return stack.isEmpty
}
