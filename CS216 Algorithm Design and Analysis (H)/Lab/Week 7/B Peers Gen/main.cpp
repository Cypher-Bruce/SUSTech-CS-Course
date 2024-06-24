#include <iostream>
#include <cmath>
using namespace std;

int main() {
    freopen("C:\\Users\\Cyphe\\Documents\\SUSTech Assignment\\Term 4\\Algorithm Design and Analysis\\Lab\\Week 7\\B Peers Gen\\output.txt", "w", stdout);
    int max_l = 5E5;
    string s = "";
    srand(time(0));
    for (int i = 0; i < max_l; ++i) {
        int x = rand() % 3;
        if (x == 0) s += '0';
        else if (x == 1) s += '1';
        else s += '?';
    }
    cout << s << endl;

    int magic[max_l];
    for (int i = 1; i <= max_l / 2; ++i) {
        bool same = true;
        for (int j = 0; j < i; ++j) {
            char first = s[j];
            char second = s[max_l - i + j];
            if (first != '?' && second != '?' && first != second) {
                same = false;
                break;
            }
        }
        if(same){
            magic[i] = 1;
        } else {
            magic[i] = 0;
        }
    }
    long long ans = 0;
    for (int i = 1; i <= max_l / 2; ++i) {
        ans ^= (long long)pow(i, 2) * magic[i];
    }
    cout << ans << endl;
    return 0;
}
