class Solution {
    func isPowerOfFour(_ n: Int) -> Bool {
        if n == 0 {
            return false    //Exceptional case 0
        }
        if n == 1 {         //Exceptional case 4^0 = 1
            return true
        }
        if n % 4 == 0 {
            return isPowerOfFour(n/4)        //Recursive Case check if 4^(n-1) is power of 4.
        } else {
            return false                    //Return false if it's not.
        }
    }
}