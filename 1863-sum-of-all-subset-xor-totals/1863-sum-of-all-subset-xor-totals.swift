class Solution {
    func subsetXORSum(_ nums: [Int]) -> Int {
        var result = 0
        
        func calculate(_ xor: Int, _ start: Int) {
            guard start < nums.count else { return }
            let next = xor ^ nums[start]
            result += next
            
            calculate(xor, start + 1)
            calculate(next, start + 1)
        }
        
        calculate(0, 0)
        
        return result
    }
}