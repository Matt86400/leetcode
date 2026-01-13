class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var i = 0 
        var cur = 0
        while cur < nums.count {
            if nums[i] == nums[cur] {
                cur = cur + 1
            }else {
                i = i + 1
                nums[i] = nums[cur]
                cur = cur + 1
            }
        }

        return i + 1
    }
}
