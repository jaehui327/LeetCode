class Solution {
    func checkIfExist(_ arr: [Int]) -> Bool {
        var seen = Set<Int>()
        for a in arr {
            if seen.contains(a * 2) || (a % 2 == 0 && seen.contains(a / 2)) {
                return true
            }
            seen.insert(a)
        }
        return false
    }
}