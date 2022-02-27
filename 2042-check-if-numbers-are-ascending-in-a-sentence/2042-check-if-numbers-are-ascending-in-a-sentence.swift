class Solution {
    func areNumbersAscending(_ s: String) -> Bool {
        let numbers: [Int] = s.split(separator: " ").compactMap { Int($0) } // https://hyerios.tistory.com/77
        if numbers == Array(Set(numbers)).sorted(by: <) {
            return true
        } else {
            return false
        }
    }
}