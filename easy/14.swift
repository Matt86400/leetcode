class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var ans = strs.first!
        for i in 1 ..< strs.count {
            ans = commonPrefix(ans, strs[i])
            if ans.count == 0 {
                break
            }
        }
        return ans
    }
    func commonPrefix(_ str1: String, _ str2: String) -> String {
        var arr1 = Array(str1)
        var arr2 = Array(str2)
        var ans:[Character] = []
        var i = 0 
        while i < arr1.count && i < arr2.count {
            if arr1[i] == arr2[i] {
                ans.append(arr1[i])
                i = i + 1
            }else {
                break
            }
        }
        return String(ans)
    }
}
