
class KthLargest {
    let k: Int
    var nums: [Int]
    
    init(_ k: Int, _ nums: [Int]) {
        self.k = k
        self.nums = nums
    }
    
    func add(_ val: Int) -> Int {
        nums.append(val)
        nums.sort(by: >)
        return nums[k - 1]
    }
}

/**
 * Your KthLargest object will be instantiated and called as such:
 * let obj = KthLargest(k, nums)
 * let ret_1: Int = obj.add(val)
 */