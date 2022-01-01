class Solution {
    func countStudents(_ students: [Int], _ sandwiches: [Int]) -> Int {
        var stuCount: [Int] = [0, 0]        //Counter for student choices
        let sws = sandwiches
        for stu in students {
            stuCount[stu] += 1              //Count Choices
        }
        
        var idx = 0
        while stuCount[sws[idx]] > 0 {      //Student will always come around
            stuCount[sws[idx]] -= 1         //so, just check if there is some person available
            idx += 1                        //to pick the topmost sandwich
            if idx == sws.count {
                return 0                    //All Sandwiches finished
            }
        }
        
        return stuCount.reduce( 0, +)       //The number of students remaining if nobody was left to pick top sandwich
    }
}