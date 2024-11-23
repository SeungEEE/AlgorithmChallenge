func solution(_ n:Int64) -> Int64 {
    let result = String(n).sorted(by: >) 
    return Int64(String(result))! // 정렬된 배열을 문자열로 변환 후 정수로 변환
}