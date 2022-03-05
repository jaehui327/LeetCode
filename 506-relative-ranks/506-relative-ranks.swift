class Solution {
    func findRelativeRanks(_ score: [Int]) -> [String] {
        var dic = [Int: String]()
        var result = [String]()
        
        for (i, s) in score.sorted(by: >).enumerated() {
            if i == 0 {
                dic[s] = "Gold Medal"
            } else if i == 1 {
                dic[s] = "Silver Medal"
            } else if i == 2 {
                dic[s] = "Bronze Medal"
            } else {
                dic[s] = "\(i + 1)" 
            }
        }
        
        for s in score {
            result.append(dic[s]!)
        }
        
        return result
    }
}