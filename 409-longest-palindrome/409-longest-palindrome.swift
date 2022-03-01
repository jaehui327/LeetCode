class Solution {
    func longestPalindrome(_ s: String) -> Int {
        var dic = [Character: Int]()
        for c in s {
            if dic[c] == nil {
                dic[c] = 1
            } else {
                dic[c]! += 1
            }
        }
        
        var result = 0
        for d in dic {
            result += d.value / 2 * 2
            if result % 2 == 0, d.value % 2 == 1 {
                result += 1
            }
        }
        return result
    }
}