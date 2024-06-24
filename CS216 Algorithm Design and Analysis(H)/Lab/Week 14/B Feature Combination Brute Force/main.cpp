#include <unordered_set>
#include <cstdio>
using namespace std;

const int MAX_N = 6E5;
const int MAX_M = 9E4;

unordered_set<int> features[MAX_N + 1];

int main() {
    int n, m;
    scanf("%d%d", &n, &m);

    for (int i = 1; i <= m; ++i) {
        features[i].insert(i);
    }

    for (int i = m + 1, creature_1, creature_2; i <= n; ++i) {
        scanf("%d%d", &creature_1, &creature_2);
        features[i].insert(features[creature_1].begin(), features[creature_1].end());
        features[i].insert(features[creature_2].begin(), features[creature_2].end());
        printf("%llu\n", features[i].size());
    }
    return 0;
}
