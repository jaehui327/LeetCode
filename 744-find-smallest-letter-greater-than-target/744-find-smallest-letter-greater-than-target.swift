class Solution {
    func nextGreatestLetter(_ letters: [Character], _ target: Character) -> Character {
        // Linear Scan
        /*
        for l in letters {
            if l > target {
                return l
            }
        }
        return letters[0]
        */
        // Binary Search
        var left = 0
        var right = letters.count
        while left < right {
            let middle = left + (right - left) / 2
            if letters[middle] <= target {
                left = middle + 1
            } else {
                right = middle
            }
        }
        return letters[left % letters.count]
    }
}