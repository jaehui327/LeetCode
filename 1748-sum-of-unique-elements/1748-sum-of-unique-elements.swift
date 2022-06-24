class Solution {
    func sumOfUnique(_ nums: [Int]) -> Int {
        var dic = [Int: Int]()
        for n in nums {
            if dic[n] == nil {
                dic[n] = 1
            } else {
                dic[n]! += 1
            }
        }
        var sum = 0
        for d in dic {
            if d.value == 1 {
                sum += d.key
            }
        }
        return sum
    }
}