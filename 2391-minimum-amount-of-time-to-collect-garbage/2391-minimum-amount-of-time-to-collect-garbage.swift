class Solution {
    func garbageCollection(_ garbage: [String], _ travel: [Int]) -> Int {
        let types: [Character] = ["M", "P", "G"]
        var totalTime = 0
        
        let garbageDict = garbage.map { grbg in
            grbg.reduce(into: [:]) { counts, word in counts[word, default: 0] += 1 }
        }
        var travelTimes = [travel.first!]
        for idx in 1..<travel.count {
            travelTimes.append(travelTimes.last! + travel[idx])
        }

        for gType in types {
            var lastStop = 0
            for idx in 0..<garbageDict.count {
                if let canCount = garbageDict[idx][gType] {
                    totalTime += canCount
                    lastStop = idx
                }
            }
            if lastStop != 0 {
                totalTime += travelTimes[lastStop-1]
            }
        }
        return totalTime
    }
}