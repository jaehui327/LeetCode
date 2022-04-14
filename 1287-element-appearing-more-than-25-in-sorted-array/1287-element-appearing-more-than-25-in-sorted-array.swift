class Solution {
    func findSpecialInteger(_ arr: [Int]) -> Int {
        let standard = arr.count / 4
        for i in 0..<arr.count - standard {
            if arr[i] == arr[i + standard] {
                return arr[i]
            }
        }
        return arr[-1]
    }
}