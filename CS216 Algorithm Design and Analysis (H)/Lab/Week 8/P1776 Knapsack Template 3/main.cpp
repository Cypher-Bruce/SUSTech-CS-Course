#include <iostream>
#include <cstring>
using namespace std;

const int MAX_N = 1E5+5;
long long dp[MAX_N], temp[MAX_N], queue[MAX_N];

int main() {
    int n, W;
    cin >> n >> W;

    for (int i = 0; i < n; ++i) {
        int value, weight, max_num;
        cin >> value >> weight >> max_num;
        memcpy(temp, dp, sizeof(dp));
        for (int remainder = 0; remainder < weight; ++remainder) {
            int head = 0, tail = -1;
            for (int j = remainder; j <= W; j += weight) {
                if (head <= tail && j - queue[head] > max_num * weight) {
                    ++head;
                }
                if (head <= tail) {
                    dp[j] = max(dp[j], temp[queue[head]] + (j - queue[head]) / weight * value);
                }
                while (head <= tail && temp[queue[tail]] - (queue[tail] - remainder) / weight * value <= temp[j] - (j - remainder) / weight * value) {
                    --tail;
                }
                ++tail;
                queue[tail] = j;
            }
        }
    }

    cout << dp[W] << endl;
    return 0;
}
