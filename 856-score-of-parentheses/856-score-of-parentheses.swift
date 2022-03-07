class Solution {
    func scoreOfParentheses(_ s: String) -> Int {
        var stack: [Character] = []
        var before: Character = "."
        var result = 0
        for c in s {
            if c == "(" {
                stack.append(c)
            } else {
                stack.removeLast()
                if before != ")", c == ")" {
                    result += Int(pow(Double(2), Double(stack.count)))
                }
            }
            before = c
        }
        return result
    }
}