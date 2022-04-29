class Solution {
    func isPathCrossing(_ path: String) -> Bool {
        var x = 0
        var y = 0
        var points = [(0, 0)]
        for p in path {
            if p == "E" {
                x += 1
            } else if p == "W" {
                x -= 1
            } else if p == "N" {
                y += 1
            } else if p == "S" {
                y -= 1
            }
            
            
            if points.contains(where: { $0 == (x, y) }) {
                return true
            }
            points.append((x, y))
        }
        return false
    }
}