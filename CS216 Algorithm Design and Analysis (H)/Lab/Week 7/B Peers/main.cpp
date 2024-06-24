#include <complex>
#include <iostream>
#include <algorithm>
#include <cmath>
using namespace std;

const int MAX_N = 6E6 + 5;
const double PI = acos(-1);

complex<double> F[MAX_N], G[MAX_N];
int reversed[MAX_N];

void generate_reversed(int len) {
    for (int i = 0; i < len; i++) {
        reversed[i] = (reversed[i >> 1] >> 1) | ((i & 1) * (len >> 1));
    }
}

void fft(complex<double> *A, int len, int type) {
    for (int i = 0; i < len; i++) {
        if (i < reversed[i]) {
            swap(A[i], A[reversed[i]]);
        }
    }

    for (int mid = 1; mid < len; mid <<= 1) {
        complex<double> Wn(cos(PI / mid), type * sin(PI / mid));
        for (int R = mid << 1, j = 0; j < len; j += R) {
            complex<double> w(1, 0);
            for (int k = 0; k < mid; k++, w *= Wn) {
                complex<double> x = A[j + k], y = w * A[j + k + mid];
                A[j + k] = x + y;
                A[j + k + mid] = x - y;
            }
        }
    }

    if (type == -1) {
        for (int i = 0; i < len; i++) {
            A[i] /= len;
        }
    }
}

int main() {
    string s;
    cin >> s;
    for (int i = 0; i < s.length(); i++) {
        complex<double> temp;
        switch (s[i]) {
            case '1': temp = complex<double>(1, 1); break;
            case '0': temp = complex<double>(1, -1); break;
            case '?': temp = 0; break;
        }
        F[i] = temp;
        G[s.length() - i - 1] = temp;
    }

    int sum_len = 2 * s.length() - 2, binary_len = 1;
    while (binary_len <= sum_len) {
        binary_len <<= 1;
    }

    generate_reversed(binary_len);
    fft(F, binary_len, 1);
    fft(G, binary_len, 1);
    for (int i = 0; i < binary_len; i++) {
        F[i] *= G[i];
    }
    fft(F, binary_len, -1);

    long long ans = 0;
    for (int i = 0; i < s.length() / 2; ++i) {
        ans ^= (long long) pow(i + 1, 2) * (lround(F[i].real()) == 0 ? 1 : 0);
    }
    cout << ans << endl;

    return 0;
}
