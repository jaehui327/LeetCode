class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var result: [Int] = []
        var sum: Int = 0
        for n in nums {
            sum += n
            result.append(sum)
        }
        return result
    }
}