
class OrderedStream {
    var arr: [String]
    var idx: Int
    init(_ n: Int) {
        arr = .init(repeating: "", count: n)
        idx = 0
    }
    
    func insert(_ idKey: Int, _ value: String) -> [String] {
        arr[idKey - 1] = value
        var result: [String] = []
        var str = arr[idx]
        while str != "" {
            result.append(str)
            idx += 1
            if idx < arr.count {
                str = arr[idx]
            } else {
                str = ""
            }
        }
        return result
    }
}

/**
 * Your OrderedStream object will be instantiated and called as such:
 * let obj = OrderedStream(n)
 * let ret_1: [String] = obj.insert(idKey, value)
 */