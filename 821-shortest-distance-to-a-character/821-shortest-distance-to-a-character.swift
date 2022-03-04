class Solution {
    func shortestToChar(_ s: String, _ c: Character) -> [Int] {
        let n = s.count
        var result: [Int] = []
        var pre = Int.min / 2
        for (i, x) in s.enumerated() {
            if x == c {
                pre = i
            }
            result.append(i - pre)
        }
        pre = Int.max / 2
        for i in (0 ... n - 1).reversed() {
            if s[s.index(s.startIndex, offsetBy: i)] == c {
                pre = i
            }
            result[i] = min(result[i], pre - i)
        }
        return result
    }
}