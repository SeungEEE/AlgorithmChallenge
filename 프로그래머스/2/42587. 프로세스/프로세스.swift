import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var queue = priorities.enumerated().map{ ($0.offset, $0.element)}
    var order = 0
    
    while !queue.isEmpty {
        let current = queue.removeFirst()
        
        if queue.contains(where: { $0.1 > current.1 }) {
            queue.append(current) 
        } else {
            order += 1
            
            if current.0 == location {
                return order
            }
        }
    }
    return -1
}