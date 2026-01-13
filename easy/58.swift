class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        var array = Array(s)
        var i = s.count - 1
        var start = false
        var ans = 0
        while i >= 0 {
            if array[i] != " " {
                start = true
                ans = ans + 1
            }else {
                if start == true {
                    break
                }
            }
            i = i - 1
        }
        return ans
    }
}
