class Solution {
    func isPowerOfThree(_ n: Int) -> Bool {
        if n == 0 {
            return false    //Exceptional case 0
        }
        if n == 1 {         //Exceptional case 3^0 = 1
            return true
        }
        if n % 3 == 0 {
            return isPowerOfThree(n/3)        //Recursive Case check if 3^(n-1) is power of 3.
        } else {
            return false                    //Return false if it's not.
        }
    }
}