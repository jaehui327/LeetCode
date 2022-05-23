class Solution {
    func generateTheString(_ n: Int) -> String {
        var answer = String(repeating: "a", count: n)
        if n % 2 == 0 {
            answer.removeLast()
            answer += "b"
        }
        return answer
    }
}