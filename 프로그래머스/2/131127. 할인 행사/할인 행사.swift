import Foundation

func solution(_ want:[String], _ number:[Int], _ discount:[String]) -> Int {
    var wantDict = [String: Int]()
    for (index, item) in want.enumerated() {
        wantDict[item] = number[index]
    }
    
    var count = 0
    let days = 10 // 연속 10일간 확인
    

    for i in 0...(discount.count - days) {
        var discountDict = [String: Int]()
        
        for j in i..<i + days {
            let product = discount[j]
            discountDict[product, default: 0] += 1
        }
        
        if discountDict == wantDict {
            count += 1
        }
    }
    
    return count
}