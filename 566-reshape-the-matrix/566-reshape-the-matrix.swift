class Solution {
    func matrixReshape(_ mat: [[Int]], _ r: Int, _ c: Int) -> [[Int]] {
        if mat.count * mat[0].count != r * c {
            return mat
        }
        var a1: [Int] = []
        for m in mat {
            for n in m {
                a1.append(n)
            }
        }
        var result = [[Int]](repeating: [Int](repeating: 0, count: c), count: r)
        for i in Range(0 ... r - 1) {
            for j in Range(0 ... c - 1) {
                result[i][j] = a1.first!
                a1.removeFirst()
            }
        }
        return result
    }
}