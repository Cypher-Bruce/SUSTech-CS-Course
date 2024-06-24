#include <iostream>
#include <vector>
#include <queue>
#include <climits>

using namespace std;
struct Edge{
    int from, to, weight;
};

const int MAX_NODE = 1E4;
const int MAX_EDGE = 5E5;

vector<Edge> edges[MAX_NODE + 1];
bool visited[MAX_NODE + 1];
int dist[MAX_NODE + 1];
int count[MAX_NODE + 1];

bool SPFA(int start, int n) {
    dist[start] = 0;
    visited[start] = true;
    count[start] = 1;
    queue<int> q;
    q.push(start);

    while (!q.empty()) {
        int u = q.front();
        q.pop();
        visited[u] = false;

        for (int i = 0; i < edges[u].size(); i++) {
            Edge e = edges[u][i];
            if (dist[e.to] > dist[u] + e.weight) {
                dist[e.to] = dist[u] + e.weight;
                if (!visited[e.to]) {
                    visited[e.to] = true;
                    q.push(e.to);
                    count[e.to]++;
                    if (count[e.to] > n) {
                        return false;
                    }
                }
            }
        }
    }
    return true;
}

int main() {
    int n, m, s;
    cin >> n >> m >> s;

    for (int i = 0; i < m; i++) {
        int from, to, weight;
        cin >> from >> to >> weight;
        edges[from].push_back({from, to, weight});
    }

    for (int i = 1; i <= n; i++) {
        dist[i] = INT_MAX;
    }

    if (SPFA(s, n)) {
        for (int i = 1; i <= n; i++) {
            cout << dist[i] << " ";
        }
    } else {
        cout << "Negative cycle detected!";
    }
    return 0;
}
