import Foundation

func gcd(_ n1: Int, _ n2: Int) -> Int {        
    if(n2 == 0) { return n1 }        
    else { return gcd(n2, n1 % n2) }
} 

func solution(_ denum1:Int, _ num1:Int, _ denum2:Int, _ num2:Int) -> [Int] {   
    let num = num1 * num2    
    let denum = (denum1 * num2) + (denum2 * num1)    
    let gcdNum = gcd(num, denum)    
    return [denum/gcdNum, num/gcdNum]
}


