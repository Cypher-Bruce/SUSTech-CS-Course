#include <iostream>
#include <climits>

using namespace std;

const int MAX_LEN = 2000;
int dp[MAX_LEN+1][MAX_LEN+1];

int main() {
    string X, Y;
    int k;
    cin >> X >> Y >> k;

    for (int i = 1; i <= X.length(); ++i) {
        dp[i][0] = i * k;
    }
    for (int j = 1; j <= Y.length(); ++j) {
        dp[0][j] = j * k;
    }
    for (int i = 1; i <= X.length(); ++i) {
        for (int j = 1; j <= Y.length(); ++j) {
            int min_dp = INT_MAX;
            min_dp = min(min_dp, dp[i-1][j-1] + abs(X[i-1] - Y[j-1]));
            min_dp = min(min_dp, dp[i-1][j] + k);
            min_dp = min(min_dp, dp[i][j-1] + k);
            dp[i][j] = min_dp;
        }
    }

    cout << dp[X.length()][Y.length()] << endl;
    return 0;
}
