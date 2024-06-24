#include <iostream>
#include <cstring>

using namespace std;

const int MAX_LEN = 50;

string s;
int has_M[MAX_LEN][MAX_LEN];
int no_M[MAX_LEN][MAX_LEN];
bool check(int start, int end){
    int len = end - start + 1;
    for (int i = start; i < start + len / 2; ++i) {
        if (s[i] != s[i + len / 2]) {
            return false;
        }
    }
    return true;
}

int main() {
    cin >> s;

    memset(has_M, 0x3f, sizeof(has_M));
    memset(no_M, 0x3f, sizeof(no_M));
    for (int i = 0; i < s.length(); ++i) {
        for (int j = i; j < s.length(); ++j) {
            has_M[i][j] = no_M[i][j] = j - i + 1;
        }
    }

    for (int interval_len = 2; interval_len <= s.length(); ++interval_len) {
        for (int start = 0, end = start + interval_len - 1; end < s.length(); ++start, ++end) {
            if(interval_len % 2 == 0 && check(start, end)){
                no_M[start][end] = min(no_M[start][end], no_M[start][start + interval_len / 2 - 1] + 1);
            }
            for (int mid = start; mid < end; ++mid) {
                no_M[start][end] = min(no_M[start][end], no_M[start][mid] + end - mid);
            }
            for (int mid = start; mid < end; ++mid) {
                has_M[start][end] = min(has_M[start][end], min(has_M[start][mid], no_M[start][mid]) + min(has_M[mid + 1][end], no_M[mid + 1][end]) + 1);
            }
        }
    }

    cout << min(has_M[0][s.length() - 1], no_M[0][s.length() - 1]) << endl;
    return 0;
}
