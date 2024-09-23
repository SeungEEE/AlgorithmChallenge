import Foundation

func solution(_ board:[[Int]]) -> Int {
    var result = 0
        var b = board
        for row in 0..<board.count {
            for col in 0..<b[row].count {
                if b[row][col] == 1 {
                    var tempRow = row - 1
                    var tempCol = col - 1
                    if checkBoard(row: tempRow, col: tempCol, rowCount: b.count-1, colCount: b[row].count-1) && (b[tempRow][tempCol] != 1) {
                        b[tempRow][tempCol] = 2
                    }
                    
                    tempCol = col
                    if checkBoard(row: tempRow, col: tempCol, rowCount: b.count-1, colCount: b[row].count-1) && (b[tempRow][tempCol] != 1) {
                        b[tempRow][tempCol] = 2
                    }
                    
                    tempCol = col + 1
                    if checkBoard(row: tempRow, col: tempCol, rowCount: b.count-1, colCount: b[row].count-1) && (b[tempRow][tempCol] != 1) {
                        b[tempRow][tempCol] = 2
                    }
                    
                    tempRow = row
                    tempCol = col - 1
                    if checkBoard(row: tempRow, col: tempCol, rowCount: b.count-1, colCount: b[row].count-1) && (b[tempRow][tempCol] != 1) {
                        b[tempRow][tempCol] = 2
                    }
                    
                    tempCol = col + 1
                    if checkBoard(row: tempRow, col: tempCol, rowCount: b.count-1, colCount: b[row].count-1) && (b[tempRow][tempCol] != 1) {
                        b[tempRow][tempCol] = 2
                    }
                    
                    tempRow = row + 1
                    tempCol = col - 1
                    if checkBoard(row: tempRow, col: tempCol, rowCount: b.count-1, colCount: b[row].count-1) && (b[tempRow][tempCol] != 1) {
                        b[tempRow][tempCol] = 2
                    }
                    
                    tempCol = col
                    if checkBoard(row: tempRow, col: tempCol, rowCount: b.count-1, colCount: b[row].count-1) && (b[tempRow][tempCol] != 1) {
                        b[tempRow][tempCol] = 2
                    }
                    
                    tempCol = col + 1
                    if checkBoard(row: tempRow, col: tempCol, rowCount: b.count-1, colCount: b[row].count-1) && (b[tempRow][tempCol] != 1) {
                        b[tempRow][tempCol] = 2
                    }
                }
            }
        }
        
        b.forEach{ arr in
            arr.forEach {
                if $0 == 0 {
                    result += 1
                }
            }
        }
        
        return result
    }

func checkBoard(row: Int, col: Int, rowCount: Int, colCount: Int) -> Bool {
    if ((row >= 0) && (row <= rowCount)) && ((col >= 0) && (col <= colCount)) {
        return true
    }
    return false
}