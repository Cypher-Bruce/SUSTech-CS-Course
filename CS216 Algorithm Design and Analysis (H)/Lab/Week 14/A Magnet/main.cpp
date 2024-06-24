#include <iostream>
#include <vector>
#include <algorithm>
#include<unordered_set>
#include <random>
using namespace std;

const int MAX_N = 60;
const int MAX_SHUFFLE = 1000;

vector<int> shuffled;
vector<int> clique;
vector<unordered_set<int>> graph(MAX_N, unordered_set<int>());

int main() {
    int n, m;
    cin >> n >> m;
    for (int i = 1; i <= n; ++i) {
        shuffled.push_back(i);
    }
    for (int i = 0; i < m; ++i) {
        int u, v;
        cin >> u >> v;
        graph[u].insert(v);
        graph[v].insert(u);
    }

    random_device rd;
    mt19937 g(rd());
    int max_clique_size = 0;

    for (int i = 0; i < MAX_SHUFFLE; ++i) {
        shuffle(shuffled.begin(), shuffled.end(), g);
        clique.clear();
        for (int j = 0; j < n; ++j) {
            bool is_clique = true;
            for (int k = 0; k < clique.size(); ++k) {
                if (graph[shuffled[j]].find(clique[k]) == graph[shuffled[j]].end()) {
                    is_clique = false;
                    break;
                }
            }
            if (is_clique) {
                clique.push_back(shuffled[j]);
            }
        }
        max_clique_size = max(max_clique_size, (int)clique.size());
    }

    cout << max_clique_size << endl;
    return 0;
}
