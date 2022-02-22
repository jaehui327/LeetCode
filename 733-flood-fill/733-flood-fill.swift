class Solution {
    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ newColor: Int) -> [[Int]] {
        var result = image
        let oldColor = result[sr][sc]
        let m = result.count
        let n = result[0].count
        
        func dfs(_ i: Int, _ j: Int) {
            result[i][j] = newColor
            for t in [(i - 1, j), (i + 1, j), (i, j - 1), (i, j + 1)] {
                if 0 <= t.0, t.0 < m, 0 <= t.1, t.1 < n, result[t.0][t.1] == oldColor {
                    dfs(t.0, t.1)
                }
            }
        }
        
        if oldColor != newColor {
            dfs(sr, sc)
        }
        
        return result
    }
}