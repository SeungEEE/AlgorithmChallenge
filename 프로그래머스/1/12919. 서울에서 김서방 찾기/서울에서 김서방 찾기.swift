func solution(_ seoul:[String]) -> String {
    if let index = seoul.firstIndex(of: "Kim") {
        return "김서방은 \(index)에 있다"
    }
    return ""
}