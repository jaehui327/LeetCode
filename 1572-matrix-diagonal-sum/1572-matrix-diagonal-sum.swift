class Solution {
    func diagonalSum(_ mat: [[Int]]) -> Int {
        var result = 0
        var left = 0
        var right = mat.count - 1
        let size = mat.count
        
        for m in mat {
            result += m[left] + m[right]
            left += 1
            right -= 1
        }
        
        if size % 2 == 1 {
            result -= mat[size / 2][size / 2]
        }
        
        return result
    }
}