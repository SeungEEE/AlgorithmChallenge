import Foundation

func solution(_ letter:String) -> String {
    let morse = [
        ".-":"a","-...":"b","-.-.":"c","-..":"d",".":"e","..-.":"f",
        "--.":"g","....":"h","..":"i",".---":"j","-.-":"k",".-..":"l",
        "--":"m","-.":"n","---":"o",".--.":"p","--.-":"q",".-.":"r",
        "...":"s","-":"t","..-":"u","...-":"v",".--":"w","-..-":"x",
        "-.--":"y","--..":"z"
        ]
    
    let result = letter.split(separator: " ").map {
        morse[String($0)]!}.joined(separator: "")
        
    return result
}