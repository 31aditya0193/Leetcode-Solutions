class Solution {
    func destCity(_ paths: [[String]]) -> String {
        var dict: [String: Bool] = [:]
        var destination: String = ""
        for path in paths {
            let origin = path[0]
            let dest = path[1]
            if dict[dest] == nil {
                dict[dest] = true
            }
            if dict[origin] == nil || dict[origin] == true {
                dict[origin] = false
            }
        }
        for (city, check) in dict {
            if check {
                destination = city
            }
        }
        return destination
    }
}