#include <iostream>
#include <random>
using namespace std;
int main() {
    freopen("C:\\Users\\Cyphe\\Documents\\SUSTech Assignment\\Term 4\\Algorithm Design and Analysis\\Lab\\Week 14\\B input.txt", "w", stdout);

    const int n = 6E5;
    const int m = 9E4;
    cout << n << " " << m << endl;

    random_device rd;
    mt19937 gen(rd());

    for (int i = m + 1; i <= n; ++i) {
        uniform_int_distribution<int> dis1((i - 1) / 3 * 2 + 1, i - 1);
        uniform_int_distribution<int> dis2((i - 1) / 3 * 2 + 1, i - 1);
        cout << dis1(gen) << " " << dis2(gen) << endl;
    }
    return 0;
}
