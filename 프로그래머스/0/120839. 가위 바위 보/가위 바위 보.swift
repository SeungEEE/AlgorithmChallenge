import Foundation

func solution(_ rsp:String) -> String {
    let result = rsp.map { i in
        switch i {
            case "2":
            	return "0"
            case "0":
            	return "5"
            default:
            	return "2"
        }
    }.joined()
    
    return result
}