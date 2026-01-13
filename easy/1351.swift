class Solution {
    func countNegatives(_ grid: [[Int]]) -> Int {
        var count = 0
        var rowCount = grid.count
        var columnCount = grid.first!.count
        let total = rowCount * columnCount
        for i in 0 ..< rowCount {
            for j in 0 ..< columnCount {
                let val = grid[i][j]
                if val >= 0 {
                    count = count + 1
                }else {
                     columnCount = j
                    break
                }

            }
        }
        return total - count
    }
}
