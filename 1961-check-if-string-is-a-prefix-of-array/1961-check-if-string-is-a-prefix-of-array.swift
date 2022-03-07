class Solution {
    func isPrefixString(_ s: String, _ words: [String]) -> Bool {
        var prefix = ""
        for word in words {
            prefix += word
            if s == prefix {
                return true
            }            
        }
        return false
    }
}