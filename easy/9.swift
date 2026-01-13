
class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 {return false}
        if x == 0 {return true}
        var val = x
        var array:[Int] = []
        while val > 0 {
            let m = val / 10
            let n = val % 10
            val = m
            array.append(n)
        }
        var res = true
        var i = 0
        var j = array.count - 1
        while i < j {
            if array[i] == array[j] {
                i = i + 1
                j = j - 1
            }else {
                res = false
                break
            }
        }
        return res
    }
}
