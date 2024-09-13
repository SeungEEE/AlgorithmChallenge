import Foundation

func solution(_ my_str:String, _ n:Int) -> [String] {
       var result = [String]()
       let arr = my_str.map{ String($0) }
       let quotient = my_str.count/n
        
       for i in 0..<quotient {
           result.append((arr[(n*i)..<n*(i+1)]).joined(separator:""))
       }
        
       if (quotient*n) < my_str.count {
           result.append(arr[(quotient*n)...].joined(separator:""))
       }        
       return result
}