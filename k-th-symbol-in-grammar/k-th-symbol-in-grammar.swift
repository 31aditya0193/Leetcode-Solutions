class Solution {
    func kthGrammar(_ n: Int, _ k: Int) -> Int {
        if n == 1 {
            return 0
        }
        return kthGrammar(n-1, (k+1) / 2) == 0 ? k % 2 == 0 ? 1 : 0 : k % 2 == 0 ? 0 : 1
    }
}