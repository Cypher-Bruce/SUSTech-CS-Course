#include <iostream>
#include <bitset>

using namespace std;
const int modular = 12345678;
int main() {
    int boy_num = 2, girl_num = 2, max_diff = 3;
    long long ans = 0;
    for (int i = 0; i < 1 << (boy_num + girl_num); i++) {
        int boy_cnt = 0;
        int line[boy_num + girl_num];
        for (int j = 0; j < boy_num + girl_num; j++) {
            if (i & (1 << j)) {
                boy_cnt++;
                line[j] = 1;
            }else{
                line[j] = -1;
            }
        }
        if (boy_cnt != boy_num) {
            continue;
        }

        bool flag = true;
        for (int head = 0; head < boy_num + girl_num; head++) {
            for (int tail = head + 1; tail < boy_num + girl_num; tail++) {
                int sum = 0;
                for (int k = head; k <= tail; k++) {
                    sum += line[k];
                }
                if (abs(sum) > max_diff) {
                    flag = false;
                    break;
                }
            }
            if (!flag) {
                break;
            }
        }
        if (flag) {
            ans++;
            ans %= modular;
        }
    }
    cout << ans << endl;
    return 0;
}
// dp[m][f][k] = dp[m-1][f][k-1] + dp[m][f-1][k-1]