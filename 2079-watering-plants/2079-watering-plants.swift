class Solution {
    func wateringPlants(_ plants: [Int], _ capacity: Int) -> Int {
        var steps = 0
        var idx = 0
        var bucket = capacity
        while idx != plants.count {
            if plants[idx] <= bucket {
                steps += 1
                bucket -= plants[idx]
                idx += 1
            } else {
                steps += 2 * idx
                bucket = capacity
            }
        }
        return steps
    }
}