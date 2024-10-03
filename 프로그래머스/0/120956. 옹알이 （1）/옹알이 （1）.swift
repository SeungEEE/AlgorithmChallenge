import Foundation

func solution(_ babbling:[String]) -> Int {
    let fours = ["aya", "ye", "woo", "ma"]
    var count = 0
    babbling.forEach { word in
		let result = fours.reduce(word) { someResult, four in
			someResult.components(separatedBy: four).joined(separator: " ")
		}
		if result.trimmingCharacters(in: .whitespaces) == "" {
            count += 1
        }
	}
    return count
}