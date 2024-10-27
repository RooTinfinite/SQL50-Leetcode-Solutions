impl Solution {
    pub fn count_squares(matrix: Vec<Vec<i32>>) -> i32 {
        let n = matrix.len();
        let m = matrix[0].len();
        
        // Create DP table
        let mut dp = vec![vec![0; m]; n];
        let mut ans = 0;
        
        // Initialize first column
        for i in 0..n {
            dp[i][0] = matrix[i][0];
            ans += dp[i][0];
        }
        
        // Initialize first row
        for j in 1..m {
            dp[0][j] = matrix[0][j];
            ans += dp[0][j];
        }
        
        // Fill the DP table
        for i in 1..n {
            for j in 1..m {
                if matrix[i][j] == 1 {
                    dp[i][j] = 1 + dp[i][j-1].min(dp[i-1][j]).min(dp[i-1][j-1]);
                }
                ans += dp[i][j];
            }
        }
        
        ans
    }
}