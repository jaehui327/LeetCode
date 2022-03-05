class Solution {
    func findLucky(_ arr: [Int]) -> Int {
        var dic: [Int: Int] = [Int: Int]()
        var result = -1
        
        for n in arr {
            if dic[n] == nil {
                dic[n] = 1
            } else {
                dic[n]! += 1
            }
        }
        
        for d in dic {
            if d.key == d.value, result < d.key {
                result = d.key
            }
        }
        
        return result
    }
}