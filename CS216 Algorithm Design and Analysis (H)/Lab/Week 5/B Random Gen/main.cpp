#include <iostream>
using namespace std;

int main() {
    freopen("C:\\Users\\Cyphe\\Documents\\SUSTech Assignment\\Term 4\\Algorithm Design and Analysis\\Lab\\Week 5\\B Random Gen\\test.txt", "w", stdout);
    srand(time(0));
    int n = 100, m = 2000;
    cout << n << " " << m << endl;
    for (int i = 0; i < m; ++i) {
        cout << rand() % n << " " << rand() % n << " " << (rand() % 100 + 1) * 10 << endl;
    }
    return 0;
}
