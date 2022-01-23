class Solution {
    func deleteAndEarn(_ nums: [Int]) -> Int {
        var dict : [Int: Int] = [:]
        for ele in nums {
            if let count = dict[ele] {
                dict[ele] = count + 1
            } else {
                dict[ele] = 1
            }
        }
        let cnt = dict.count
        let lookupArray = Array(dict.keys).sorted()
        var table: [Int] = []
        if cnt >= 1 {
            table.append(lookupArray[0] * dict[lookupArray[0]]!)
        }
        
        if cnt >= 2 {
            if lookupArray[1] - 1 == lookupArray[0] {
                table.append(max(lookupArray[1] * dict[lookupArray[1]]!, table[0]))
            } else {
                table.append(table[0] + lookupArray[1] * dict[lookupArray[1]]!)
            }
        }
        if cnt >= 3 {
            for idx in 2..<cnt {
                if lookupArray[idx] - 1 == lookupArray[idx - 1] {
                    table.append(max(table[idx-1], table[idx-2] + lookupArray[idx] * dict[lookupArray[idx]]!))
                } else {
                    table.append(table[idx-1] + lookupArray[idx] * dict[lookupArray[idx]]!)
                }
            }
        }
        return table.last!
    }
}