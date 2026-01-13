class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        var i = 0 
        var max = haystack.count - needle.count
        var array = Array(haystack)
        while i <= max {
            var j = i
            var match = true
            for char in needle {
                if array[j] != char {
                    match = false
                    break
                }
                j = j + 1
            }
            if match {
                return i
            }
            i = i + 1
        }
        return  -1
    }
}
