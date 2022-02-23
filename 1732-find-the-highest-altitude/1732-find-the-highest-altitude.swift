class Solution {
    func largestAltitude(_ gain: [Int]) -> Int {
        var altitudes = [0]
        var altitude = 0
        for g in gain {
            altitude += g
            altitudes.append(altitude)
        }
        return altitudes.max()!
    }
}