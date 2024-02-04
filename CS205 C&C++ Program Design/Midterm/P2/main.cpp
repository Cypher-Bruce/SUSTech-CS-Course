#include <iostream>
#include <cstring>
using namespace std;

int main() {
    string s;
    cin >> s;

    int len[100000];
    int cnt = 0;
    for (int i = 0; i < s.length();) {
        int start = i;
        int end = i;
        int curLen = 0;
        while(end <= s.length() && s[end] == s[start]){
            end++;
            curLen++;
        }
        len[cnt] = curLen;
        cnt++;
        i = end;
    }

    int maxB = 0;
    for (int i = 0; i < cnt - 1; ++i) {
        maxB = max(maxB, min(len[i], len[i+1]));
    }
    cout<<maxB*2;
    return 0;
}
