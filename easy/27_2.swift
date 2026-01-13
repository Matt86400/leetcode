class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var i = 0 
        var cur = 0
        while cur < nums.count {
            if nums[cur] != val {
                if i != cur {
                    nums[i] = nums[cur]
                }
                i = i + 1
            }
            cur = cur + 1
        }
        return i
    }
}
