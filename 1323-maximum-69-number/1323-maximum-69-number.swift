class Solution {
    func maximum69Number (_ num: Int) -> Int {
        var nums = "\(num)".compactMap { $0.wholeNumberValue }
        if !nums.contains(6) {
            return num
        }
        
        for i in 0..<nums.count {
            if nums[i] == 6 {
                nums[i] = 9
                break
            }
        }
        return Int(nums.map{String($0)}.joined())!
    }
}