class Solution {
    func reverseWords(_ s: String) -> String {
        var result: [String] = []
        let words = s.split(separator: " ")
        for word in words {
            result.append(String(word.reversed()))
        }
        return result.joined(separator: " ")
    }
}