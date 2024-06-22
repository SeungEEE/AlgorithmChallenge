import Foundation

func solution(_ sides:[Int]) -> Int {
    let sidesArray = sides.sorted()
    if sidesArray[0] + sidesArray[1] > sidesArray[2] {
        return 1
    }
    return 2
}