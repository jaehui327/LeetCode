class Solution {
    func findSpecialInteger(_ arr: [Int]) -> Int {
        var dic: [Int: Int] = [:]
        for a in arr {
            if let _ = dic[a] {
                dic[a]! += 1
            } else {
                dic[a] = 0
            }
        }
        let result = dic.sorted { $0.value > $1.value }
        return result.first!.key
    }
}