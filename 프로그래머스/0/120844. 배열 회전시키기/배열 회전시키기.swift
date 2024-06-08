import Foundation

func solution(_ numbers:[Int], _ direction:String) -> [Int] {
    var array = [Int]()
    if direction == "right" {
        array.append(numbers.last!)
        
        for i in numbers {
            array.append(i)
        }
        array.removeLast()
    } else {
        array = numbers
        array.removeFirst()
        array.append(numbers[0])
    }
    return array
}