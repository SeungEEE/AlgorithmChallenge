func solution(_ arr:[Int]) -> Int {
    return arr.reduce(1) { lcm($0, $1)}
}

func gcd(_ num1: Int, _ num2: Int) -> Int {
    return num2 == 0 ? num1: gcd(num2, num1 % num2) 
}

func lcm(_ num1: Int, _ num2: Int) -> Int {
    return num1 * num2 / gcd(num1, num2)
}