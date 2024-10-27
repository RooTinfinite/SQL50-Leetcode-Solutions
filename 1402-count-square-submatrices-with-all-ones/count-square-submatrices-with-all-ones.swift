class Solution {
    func countSquares(_ matrix: [[Int]]) -> Int {
        // Get dimensions of the matrix
        let n = matrix.count    // number of rows
        let m = matrix[0].count // number of columns
        
        // Create a DP table with same dimensions as matrix
        var dp = Array(repeating: Array(repeating: 0, count: m), count: n)
        
        // Variable to store total count of squares
        var ans = 0
        
        // Initialize first column of DP table
        for i in 0..<n {
            dp[i][0] = matrix[i][0]
            ans += dp[i][0]  // Add the count of squares from the first column
        }
        
        // Initialize first row of DP table
        for j in 1..<m {
            dp[0][j] = matrix[0][j]
            ans += dp[0][j]  // Add the count of squares from the first row
        }
        
        // Fill the DP table for remaining cells
        for i in 1..<n {
            for j in 1..<m {
                // Only process if current cell in matrix is 1
                if matrix[i][j] == 1 {
                    // For each cell, check the minimum value among:
                    // 1. Left cell (dp[i][j-1])
                    // 2. Top cell (dp[i-1][j])
                    // 3. Top-left diagonal cell (dp[i-1][j-1])
                    // Add 1 to this minimum value
                    dp[i][j] = 1 + min(dp[i][j-1], dp[i-1][j], dp[i-1][j-1])
                }
                // Add current cell's value to total count
                ans += dp[i][j]
            }
        }
        
        // Return total count of squares
        return ans
    }
}