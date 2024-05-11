import Foundation

func solution(_ slice:Int, _ n:Int) -> Int {
    
    var tmp = slice
    while(tmp / n < 1){
    	tmp += slice
    }
	return tmp / slice
}