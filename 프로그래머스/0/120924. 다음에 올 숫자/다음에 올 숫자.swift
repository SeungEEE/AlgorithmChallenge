import Foundation

func solution(_ common:[Int]) -> Int {
    let d = common[1] - common[0]
    var r = 1
    var result = 0
    
	if common[0] != 0 && common[1] != 0 {
        r = common[1] / common[0]
	}

	if common[1] + d == common[2] {
        result = common[common.count - 1] + d
	} else {
    result = common[common.count - 1] * r
	}
	return result
}