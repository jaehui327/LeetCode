class Solution {
    func thousandSeparator(_ n: Int) -> String {
        var result = [Character]()
        let size = String(n).count
        
        for (i, c) in String(n).reversed().enumerated() {
            if i != 0, i % 3 == 0 {
                result.append(".")
            }
            result.append(c)
        }
        return String(result.reversed())
    }
}