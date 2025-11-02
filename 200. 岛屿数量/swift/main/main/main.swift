//
//  main.swift
//  main
//
//  Created by cedricwu on 10/28/25.
//

import Foundation

class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
        guard grid.count > 0 else { return 0 }

        var visit = Array(repeating: Array(repeating: 0, count: grid[0].count), count: grid.count)
        
        let xCount = grid[0].count
        let yCount = grid.count
        var count = 0
        
        for i in 0 ..< xCount {
            for j in 0 ..< yCount {
                if grid[j][i] == "1" && visit[j][i] != 1 {
                    count += 1
                    dfs(grid: grid, visit: &visit, x: i, y: j)
                }
            }
        }
        
        return count
    }
    
    func dfs(grid: [[Character]], visit: inout [[Int]], x: Int, y: Int) {
        guard visit[y][x] != 1 else { return }
        visit[y][x] = 1
        if x - 1 >= 0 {
            dfs(grid: grid, visit: &visit, x: x - 1, y: y)
        }
        if y - 1 >= 0 {
            dfs(grid: grid, visit: &visit, x: x, y: y - 1)
        }
        if x + 1 < grid[0].count {
            dfs(grid: grid, visit: &visit, x: x + 1, y: y)
        }
        if y + 1 < grid.count {
            dfs(grid: grid, visit: &visit, x: x, y: y + 1)
        }
    }
}
