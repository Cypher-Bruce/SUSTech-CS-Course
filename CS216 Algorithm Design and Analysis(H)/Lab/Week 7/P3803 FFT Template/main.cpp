#include <complex>
#include <iostream>
#include <algorithm>
#include <cmath>
using namespace std;

const int MAX_N = 3E6 + 5;
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
    int n, m;
    cin >> n >> m;
    for (int i = 0; i <= n; i++) {
        double coef;
        cin >> coef;
        F[i] = coef;
    }
    for (int i = 0; i <= m; i++) {
        double coef;
        cin >> coef;
        G[i] = coef;
    }

    int sum_len = n + m, binary_len = 1;
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
    for (int i = 0; i <= sum_len; i++) {
        cout << lround(F[i].real()) << " ";
    }
    return 0;
}
