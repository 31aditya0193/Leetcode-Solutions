class Solution {
    func thirdMax(_ nums: [Int]) -> Int {
        var temp = Array(Set(nums))
        temp.sort()
        let len = temp.count
        if len <= 2 {
            return temp[len-1]
        }
        var max = temp[0]
        var secondMax = max
        var thirdMax = max
        for num in temp {
            if num > max {
                thirdMax = secondMax
                secondMax = max
                max = num
            }
        }
        print(temp)
        return thirdMax
    }
}