class Solution {
    func romanToInt(_ s: String) -> Int {
        var arr = Array(s)
        var i = arr.count - 1
        var preVal:Int? = nil
        let map = [
            "I" : 1,
            "V" : 5,
            "X" : 10,
            "L" : 50,
            "C" : 100,
            "D" : 500,
            "M" : 1000
        ]
        var res = 0
        while i >= 0 {
            let val = map[String(arr[i])]!
            if preVal != nil && val < preVal! {
                res = res - val
            }else {
                res = res + val
            }
            preVal = val
            i = i - 1 
        } 
        return res
    }
}
