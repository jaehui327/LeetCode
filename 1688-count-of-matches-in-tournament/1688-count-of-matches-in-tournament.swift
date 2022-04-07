class Solution {
    func numberOfMatches(_ n: Int) -> Int {
        var result = 0
        var num = n
        while num != 1 {
            result += num - num / 2
            num /= 2
        }
        return result
    }
}