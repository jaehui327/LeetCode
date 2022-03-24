class Solution {
    func subsetXORSum(_ nums: [Int]) -> Int {
        var result = 0
        
        func calculate(_ xor: Int, _ index: Int) {
            guard index < nums.count else { return }
            let next = xor ^ nums[index]
            result += next
            
            calculate(xor, index + 1)
            calculate(next, index + 1)
        }
        
        calculate(0, 0)
        
        return result
    }
}