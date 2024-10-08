import Foundation

func solution(_ before:String, _ after:String) -> Int {
    let b = before.map { String($0) }.sorted()
    let a = after.map { String($0) }.sorted()
    return b == a ? 1: 0
}