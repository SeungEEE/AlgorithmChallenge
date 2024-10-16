func solution(_ s:String) -> String {
    var ans = ""
    var first = true
    
    for char in s {
        if char == " " {
            ans.append(char)
            first = true
        } else if first {
            ans.append(char.uppercased())
            first = false
        } else {
            ans.append(char.lowercased())
        }
    }
    return ans
}