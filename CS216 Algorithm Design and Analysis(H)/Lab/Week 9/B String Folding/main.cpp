#include <iostream>
#include <cstring>

using namespace std;

const int MAX_LEN = 100;

string s;
int not_folded[MAX_LEN][MAX_LEN];
int folded[MAX_LEN][MAX_LEN];
bool check(int start, int len){
    for (int i = start; i < start + len; i++){
        if (s[i] != s[i + len]) {
            return false;
        }
    }
    return true;
}

int main() {
    cin >> s;

    memset(not_folded, 0x3f, sizeof(not_folded));
    memset(folded, 0x3f, sizeof(folded));
    for (int i = 0; i < s.length(); ++i) {
        not_folded[i][i] = 1;
    }
    for (int interval_len = 2; interval_len <= s.length(); ++interval_len) {
        for (int start = 0, end = start + interval_len - 1; end < s.length(); ++start, ++end) {
            for (int split = start; split < end; ++split) {
                not_folded[start][end] = min(min(not_folded[start][end], not_folded[start][split] + not_folded[split + 1][end]), not_folded[start][split] + folded[split + 1][end]);
                folded[start][end] = min(min(folded[start][end], folded[start][split] + folded[split + 1][end]), folded[start][split] + not_folded[split + 1][end]);
            }
            if(interval_len % 2 == 0 && check(start, interval_len / 2)){
                folded[start][end] = min(min(folded[start][end], folded[start][start + interval_len / 2 - 1] + 1), not_folded[start][start + interval_len / 2 - 1] + 2 - (start == 0 ? 1 : 0));
            }
        }
    }

    cout << min(not_folded[0][s.length() - 1], folded[0][s.length() - 1]) << endl;
    return 0;
}
