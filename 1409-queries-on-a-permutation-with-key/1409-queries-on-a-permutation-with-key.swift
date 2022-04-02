class Solution {
    func processQueries(_ queries: [Int], _ m: Int) -> [Int] {
        var per : [Int] = []
        var result : [Int] = []
    
        for i in 1...m {
            per.append(i)
        }
        for query in queries {
            let i = per.firstIndex(of: query)!
            result.append(i)
            per.insert(per.remove(at: i), at: 0)
        }
        return result
    }
}