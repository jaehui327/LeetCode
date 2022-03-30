class Solution {
    func findErrorNums(_ nums: [Int]) -> [Int] {
        let arr = nums.sorted()
        var dubble = -1
        var missing = 1
        
        for i in 1..<arr.count {
            if arr[i] == arr[i - 1] {
                dubble = arr[i]
            } else if arr[i] > arr[i - 1] + 1 {
                missing = arr[i - 1] + 1
            }
        }
        if arr[arr.count - 1] != arr.count {
            missing = arr.count
        }
        return [dubble, missing]
    }
}