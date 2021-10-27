/**
 * Question Link: https://leetcode.com/problems/design-hashset/
 * Primary idea: Use dictionary checking for faster implementation. Use Array iteration for even basic system.
 *
 */

class MyHashSet {
    var dict = [Int:Int]()
    init() {
    }
    
    func add(_ key: Int) {
        dict[key] = 1
    }
    
    func remove(_ key: Int) {
        dict[key] = 0
    }
    
    func contains(_ key: Int) -> Bool {
        return dict[key] == 1
    }
}

/**
 * Your MyHashSet object will be instantiated and called as such:
 * let obj = MyHashSet()
 * obj.add(key)
 * obj.remove(key)
 * let ret_3: Bool = obj.contains(key)
 */
