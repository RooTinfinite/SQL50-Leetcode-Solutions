func countSquares(matrix [][]int) int {
    // Get dimensions of the matrix
    n := len(matrix)    // number of rows
    m := len(matrix[0]) // number of columns
    
    // Create a DP table with same dimensions as matrix
    dp := make([][]int, n)
    for i := range dp {
        dp[i] = make([]int, m)
    }
    
    // Variable to store total count of squares
    ans := 0
    
    // Initialize first column of DP table
    for i := 0; i < n; i++ {
        dp[i][0] = matrix[i][0]
        ans += dp[i][0]
    }
    
    // Initialize first row of DP table
    for j := 1; j < m; j++ {
        dp[0][j] = matrix[0][j]
        ans += dp[0][j]
    }
    
    // Fill the DP table for remaining cells
    for i := 1; i < n; i++ {
        for j := 1; j < m; j++ {
            if matrix[i][j] == 1 {
                // Find minimum of left, top, and diagonal cells
                min := dp[i][j-1]
                if dp[i-1][j] < min {
                    min = dp[i-1][j]
                }
                if dp[i-1][j-1] < min {
                    min = dp[i-1][j-1]
                }
                dp[i][j] = 1 + min
            }
            ans += dp[i][j]
        }
    }
    
    return ans
}