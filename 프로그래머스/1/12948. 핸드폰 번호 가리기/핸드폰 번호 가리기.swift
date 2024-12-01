func solution(_ phone_number:String) -> String {
    let count = phone_number.count
    let masked = String(repeating: "*", count: count - 4)
    let last = phone_number.suffix(4)
    return masked + last
}