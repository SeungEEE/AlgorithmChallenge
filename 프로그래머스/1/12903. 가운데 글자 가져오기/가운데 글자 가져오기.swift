func solution(_ s:String) -> String {
    let length = s.count
    let center = length / 2
    let characters = Array(s)

    if length % 2 == 0 {
        return String(characters[center - 1...center])
    } else {
        return String(characters[center])
    }
}