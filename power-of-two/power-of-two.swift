class Solution {
    func isPowerOfTwo(_ n: Int) -> Bool {
        if n == 0 {
            return false    //Exceptional case 0
        }
        if n == 1 {         //Exceptional case 2^0 = 1
            return true
        }
        if n % 2 == 0 {
            return isPowerOfTwo(n/2)        //Recursive Case check if 2^(n-1) is power of 2.
        } else {
            return false                    //Return false if it's not.
        }
    }
}