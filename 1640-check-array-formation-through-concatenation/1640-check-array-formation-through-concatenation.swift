class Solution {
    func canFormArray(_ arr: [Int], _ pieces: [[Int]]) -> Bool {
        var dic = [Int: [Int]]()
        var result = [Int]()
        for p in pieces {
            dic[p[0]] = p
        }
        for a in arr {
            if let value = dic[a] {
                result.append(contentsOf: value)
            }
        }
        return arr == result
    }
}