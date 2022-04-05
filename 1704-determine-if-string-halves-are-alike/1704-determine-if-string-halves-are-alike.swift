class Solution {
    func halvesAreAlike(_ s: String) -> Bool {
        let vowels: [Character] = ["a", "e", "i", "o", "u"]
        let a = s[..<s.index(s.startIndex, offsetBy: s.count / 2)].lowercased()
        let b = s[s.index(s.startIndex, offsetBy: s.count / 2)...].lowercased()
        
        var aCount = 0
        var bCount = 0
        for c in a {
            if vowels.contains(c) {
                 aCount += 1
            }
        }
        for c in b {
            if vowels.contains(c) {
                bCount += 1
            }
        }
        
        if aCount == bCount {
            return true
        } else {
            return false
        }
    }
}