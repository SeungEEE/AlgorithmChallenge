import Foundation

func solution(_ array:[Int]) -> Int {
    var dictionary = [Int: Int]()
    var keyNum = 0
    var count = 0
    
    for i in array {
        if dictionary.contains { $0.key == i} {
            dictionary[i]! += 1
        } else {
            dictionary[i] = 1
        }
    }
    
    for (i, j) in dictionary {
        if j == dictionary.values.max() {
            count += 1
            keyNum = i
        }
    }
   
    return count == 1 ? keyNum : -1
}