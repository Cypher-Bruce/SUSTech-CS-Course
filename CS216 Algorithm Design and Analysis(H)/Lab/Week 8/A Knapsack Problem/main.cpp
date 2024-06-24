#include <iostream>
#include <cstring>
using namespace std;

const int MAX_N = 4E3 + 5;
long long dp[MAX_N], temp[MAX_N], queue[MAX_N];

int main() {
    int N, C;
    cin >> N >> C;

    for (int i = 0; i < N; ++i) {
        int weight, value, max_num;
        cin >> weight >> value >> max_num;
        memcpy(temp, dp, sizeof(dp));
        for (int remainder = 0; remainder < weight; ++remainder) {
            int head = 0, tail = -1;
            for (int j = remainder; j <= C; j += weight) {
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

    cout << dp[C] << endl;
    return 0;
}
