//
//  main.swift
//  main
//
//  Created by dromen on 2025/10/28.
//

import Foundation

class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
        guard grid.count > 0 else { return 0 }
        var visited = Array(repeating: Array(repeating: false, count: grid[0].count), count: grid.count)
        
        let xCount = grid[0].count
        let yCount = grid.count
        var count = 0
        
        for y in 0 ..< yCount {
            for x in 0 ..< xCount {
                if visited[y][x] == false && grid[y][x] == "1" {
                    count += 1
                    dfs(grid: grid, visited: &visited, x: x, y: y, xCount: xCount, yCount: yCount)
                }
            }
        }
        
        return count
    }
    
    func dfs(grid: [[Character]], visited: inout [[Bool]], x: Int, y: Int, xCount: Int, yCount: Int) {
        guard visited[y][x] == false else { return }
        visited[y][x] = true
        guard grid[y][x] == "1" else { return }
        if x + 1 < xCount {
            dfs(grid: grid, visited: &visited, x: x + 1, y: y, xCount: xCount, yCount: yCount)
        }
        if y + 1 < yCount {
            dfs(grid: grid, visited: &visited, x: x, y: y + 1, xCount: xCount, yCount: yCount)
        }
        if x - 1 >= 0 {
            dfs(grid: grid, visited: &visited, x: x - 1, y: y, xCount: xCount, yCount: yCount)
        }
        if y - 1 >= 0 {
            dfs(grid: grid, visited: &visited, x: x, y: y - 1, xCount: xCount, yCount: yCount)
        }
    }
}

let s = Solution()
let grid: [[Character]] = [["1","1","1","1","0"],["1","1","0","1","0"],["1","1","0","0","0"],["0","0","0","0","0"]]
let grid2: [[Character]] = [["1","1","0","0","0"],["1","1","0","0","0"],["0","0","1","0","0"],["0","0","0","1","1"]]

print(s.numIslands(grid2))
