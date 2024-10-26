import Foundation

func solution(_ n:Int) -> Int 
{
       var distance = n
    var batteryUsage = 0
    
    while distance > 0 {
        if distance % 2 == 0 {
            distance /= 2
        } else {
            distance -= 1
            batteryUsage += 1
        }
    }
    
    return batteryUsage
}