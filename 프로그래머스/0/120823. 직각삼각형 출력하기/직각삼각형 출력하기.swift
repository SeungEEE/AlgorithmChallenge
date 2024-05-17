import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
var star = ""

for i in 1...n[0]{
    star += "*"
    print(star)
}