class Solution {
    func subtractProductAndSum(_ n: Int) -> Int {
        let nums = "\(n)".map { Int(String($0)) }
        var product = 1
        var sum = 0
        for n in nums {
            product *= n!
            sum += n!
        }
        return product - sum
    }
}