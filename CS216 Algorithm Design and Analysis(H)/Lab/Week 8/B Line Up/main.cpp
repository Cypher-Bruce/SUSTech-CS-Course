#include <iostream>
using namespace std;

const int MD = 12345678;
const int MAX_BOYS = 100;
const int MAX_GIRLS = 100;
const int MAX_DIFF = 30;
int dp[MAX_BOYS + 2][MAX_GIRLS + 2][MAX_DIFF + 2][MAX_DIFF + 2];

int main() {
    int n, m, k;
    cin >> n >> m >> k;

    dp[0][0][0][0] = 1;

    for (int i = 0; i <= n; ++i) {
        for (int j = 0; j <= m; ++j) {
            for (int l = 0; l <= k; ++l) {
                for (int i1 = 0; i1 <= k; ++i1) {
                    if(dp[i][j][l][i1]){
                        dp[i+1][j][l+1][max(i1-1, 0)] = (dp[i+1][j][l+1][max(i1-1, 0)] + dp[i][j][l][i1]) % MD;
                        dp[i][j+1][max(l-1, 0)][i1+1] = (dp[i][j+1][max(l-1, 0)][i1+1] + dp[i][j][l][i1]) % MD;
                    }
                }
            }
        }
    }

    long long ans = 0;
    for (int i = 0; i <= k; ++i) {
        for (int j = 0; j <= k; ++j) {
            ans = (ans + dp[n][m][i][j]) % MD;
        }
    }
    cout << ans << endl;
    return 0;
}