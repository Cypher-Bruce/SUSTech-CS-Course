#include <iostream>
#include <cstring>
using namespace std;
int main() {
    int T, M;
    cin >> T >> M;

    int value[M], weight[M];

    for (int i = 1; i <= M; i++) {
        cin >> weight[i] >> value[i];
    }

    long long dp[T+1];
    memset(dp, 0, sizeof(dp));

    for (int i = 1; i <= M; i++) {
        for (int j = weight[i]; j <= T; j++) {
            dp[j] = max(dp[j], dp[j-weight[i]] + value[i]);
        }
    }

    long long max = 0;
    for (int i = 0; i <= T; i++) {
        if (dp[i] > max) {
            max = dp[i];
        }
    }

    cout << max << endl;
    return 0;
}
