#include <iostream>
#include <vector>
#include <random>
#include <algorithm>
#include <cstring>

using namespace std;

const int MAX_N = 6E5;
const int MAX_M = 9E4;
const int MAX_SIZE = 200;

vector<int> weights(MAX_N + 1);
unsigned long long answer[MAX_N + 1];
int creature_1[MAX_N + 1], creature_2[MAX_N + 1];
int features[MAX_N + 1][MAX_SIZE];
int cur_size[MAX_N + 1];

void merge(int source_1, int source_2, int destination) {
    int i = 0, j = 0, k = 0;
    while (i < cur_size[source_1] && j < cur_size[source_2] && k < MAX_SIZE) {
        if (features[source_1][i] == features[source_2][j]) {
            features[destination][k] = features[source_1][i];
            ++i;
            ++j;
            ++k;
        } else if (weights[features[source_1][i]] < weights[features[source_2][j]]) {
            features[destination][k] = features[source_1][i];
            ++i;
            ++k;
        } else {
            features[destination][k] = features[source_2][j];
            ++j;
            ++k;
        }
    }
    while (i < cur_size[source_1] && k < MAX_SIZE) {
        features[destination][k] = features[source_1][i];
        ++i;
        ++k;
    }
    while (j < cur_size[source_2] && k < MAX_SIZE) {
        features[destination][k] = features[source_2][j];
        ++j;
        ++k;
    }
    cur_size[destination] = k;
}

int main(){
//    freopen("C:\\Users\\Cyphe\\Documents\\SUSTech Assignment\\Term 4\\Algorithm Design and Analysis\\Lab\\Week 14\\B input.txt", "r", stdin);
//    freopen("C:\\Users\\Cyphe\\Documents\\SUSTech Assignment\\Term 4\\Algorithm Design and Analysis\\Lab\\Week 14\\B randout.txt", "w", stdout);

    int n, m;
    cin >> n >> m;
    
    for (int i = 0; i < MAX_N + 1; ++i) {
        weights[i] = i;
    }

    random_device rd;
    mt19937 g(rd());

    for (int i = m + 1; i <= n; ++i) {
        cin >> creature_1[i] >> creature_2[i];
    }

    for (int rand_iter = 0; rand_iter < 3; ++rand_iter) {
        shuffle(weights.begin() + 1, weights.end(), g);
        memset(cur_size, 0, sizeof(cur_size));
        for (int i = 1; i <= m; ++i) {
            features[i][0] = i;
            cur_size[i] = 1;
        }
        for (int i = m + 1; i <= n; ++i) {
            merge(creature_1[i], creature_2[i], i);
            if (cur_size[i] == MAX_SIZE) {
                int ending_element = features[i][cur_size[i] - 1];
                answer[i - m] += (unsigned long long) MAX_N * MAX_SIZE / (weights[ending_element] + 1);
            } else {
                answer[i - m] += cur_size[i];
            }
        }
    }

    for (int i = 1; i <= n - m; ++i) {
        cout << answer[i] / 3 << endl;
    }
}

