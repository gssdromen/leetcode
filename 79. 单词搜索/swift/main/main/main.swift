//
//  main.swift
//  main
//
//  Created by cedricwu on 7/15/25.
//

import Foundation

class Solution {
    var boardRow = 0
    var boardCol = 0
    var result = false
    var visited: [[Bool]] = []
    
    func exist(_ board: [[Character]], _ word: String) -> Bool {
        boardRow = board.count
        boardCol = board.first!.count
        for _ in 0 ..< boardRow {
            let arr = Array(repeating: false, count: boardCol)
            visited.append(arr)
        }
        for r in 0 ..< boardRow {
            for c in 0 ..< boardCol {
                backtracking(board: board, word: Array(word), index: 0, row: r, col: c)
            }
        }
        
        return result
    }
    
    func backtracking(board: [[Character]], word: [Character], index: Int, row: Int, col: Int) {
        if index == word.count {
            result = true
            return
        }
        guard row >= 0 && row < boardRow && col >= 0 && col < boardCol else {
            return
        }
        let target = word[index]
        let boardItem = board[row][col]
//        print("target: \(target)")
//        print("boardItem: \(boardItem)")
        if boardItem == target && visited[row][col] == false {
            visited[row][col] = true
            // 向上
            backtracking(board: board, word: word, index: index + 1, row: row - 1, col: col)
            visited[row][col] = false
        }
        if boardItem == target && visited[row][col] == false {
            visited[row][col] = true
            // 向下
            backtracking(board: board, word: word, index: index + 1, row: row + 1, col: col)
            visited[row][col] = false
        }
        if boardItem == target && visited[row][col] == false {
            visited[row][col] = true
            // 向左
            backtracking(board: board, word: word, index: index + 1, row: row, col: col - 1)
            visited[row][col] = false
        }
        if boardItem == target && visited[row][col] == false {
            visited[row][col] = true
            // 向左
            backtracking(board: board, word: word, index: index + 1, row: row, col: col + 1)
            visited[row][col] = false
        }
    }
}

let board: [[Character]] = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]]
let word = "SEE"
let s = Solution()
print(s.exist(board, word))
