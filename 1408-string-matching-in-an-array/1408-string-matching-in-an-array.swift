class Solution {
    func stringMatching(_ words: [String]) -> [String] {
        var result = [String]()
        for word1 in words {
            for word2 in words {
                if word1 == word2 {
                    continue
                }
                if word2.contains(word1) {
                    result.append(word1)
                }
            }
        }
        return Array(Set(result))
    }
}