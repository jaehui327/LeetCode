class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        let num = "\(x)".map { String($0) }
        if num == num.reversed() {
            return true
        } else {
            return false
        }
    }
}