class Solution {
    func largestAltitude(_ gain: [Int]) -> Int {
        var max = 0
        var altitude = 0
        for g in gain {
            altitude += g
            if max < altitude {
                max = altitude
            }
        }
        return max
    }
}