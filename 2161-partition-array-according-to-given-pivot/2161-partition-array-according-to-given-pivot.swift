class Solution {
    func pivotArray(_ nums: [Int], _ pivot: Int) -> [Int] {
        var pre : [Int] = []
        var p : [Int] = []
        var post : [Int] = []
        for num in nums {
            if num < pivot {
                pre.append(num)
            } else if num > pivot {
                post.append(num)
            } else {
                p.append(num)
            }
        }
        return pre + p + post
    }
}