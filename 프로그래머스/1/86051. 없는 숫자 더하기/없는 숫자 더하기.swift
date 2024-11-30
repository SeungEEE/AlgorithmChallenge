import Foundation

func solution(_ numbers:[Int]) -> Int {
    guard numbers.count >= 1 && numbers.count <= 9 else {
        return -1;
    }
    
    var result: Int = 45;
    
    for i in numbers {
        result -= i;
    }
    
    return result;
}