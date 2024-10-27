import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    var word = Set<String>()
    word.insert(words[0])
    
    for i in 1..<words.count {
        let currentWord = words[i]
        let previousWord = words[i - 1]
        
        if word.contains(currentWord) || previousWord.last != currentWord.first {
            let person = (i % n) + 1
            let turn = (i / n) + 1
            return [person, turn]
        }
        word.insert(currentWord)
    }
    return [0, 0]
}