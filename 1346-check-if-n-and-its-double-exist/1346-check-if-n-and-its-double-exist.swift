class Solution {
    func checkIfExist(_ arr: [Int]) -> Bool {
        for (i, a) in arr.enumerated() {
            if a == 0 {
                if i != arr.lastIndex(of: 0) {
                    return true
                }
                continue
            } else if arr.contains(a * 2) {
                return true
            }
        }
        return false
    }
}