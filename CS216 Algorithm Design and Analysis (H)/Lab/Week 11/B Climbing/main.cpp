#include <iostream>
#include <cstring>
#include <queue>

using namespace std;
const int MAX_NODE = 3E2;
const int MAX_EDGE = 3E4;
const int INF = 0x3f3f3f3f;
int source, target;
long long max_flow = 0, min_cost = 0;

struct Edge {
    int to, next, value, cost;
};
Edge edges[MAX_EDGE * 2 + MAX_NODE * 2 - 2];

int head[MAX_NODE * 2 + 1], edgeCount = 2;
int cur[MAX_NODE * 2 + 1];
void add_edge(int from, int to, int capacity, int cost) {
    edges[edgeCount].to = to;
    edges[edgeCount].value = capacity;
    edges[edgeCount].next = head[from];
    edges[edgeCount].cost = cost;
    head[from] = edgeCount;
    edgeCount++;

    edges[edgeCount].to = from;
    edges[edgeCount].value = 0;
    edges[edgeCount].next = head[to];
    edges[edgeCount].cost = -cost;
    head[to] = edgeCount;
    edgeCount++;
}

int dist[MAX_NODE * 2 + 1];
bool visited[MAX_NODE * 2 + 1];
bool spfa() {
    memset(dist, 0x3f, sizeof(dist));
    memset(visited, 0, sizeof(visited));
    queue<int> q;
    q.push(source);
    dist[source] = 0;
    visited[source] = true;
    while (!q.empty()) {
        int u = q.front();
        q.pop();
        visited[u] = false;
        for (int i = head[u]; i; i = edges[i].next) {
            int v = edges[i].to;
            if (edges[i].value && dist[v] > dist[u] + edges[i].cost) {
                dist[v] = dist[u] + edges[i].cost;
                if (!visited[v]) {
                    visited[v] = true;
                    q.push(v);
                }
            }
        }
    }
    return dist[target] != INF;
}

int dfs(int now, int flow) {
    if (now == target) {
        max_flow += flow;
        return flow;
    }
    visited[now] = true;
    int flow_sum = 0;
    for (int &i = cur[now]; i; i = edges[i].next) {
        int v = edges[i].to;
        if (!visited[v] && dist[v] == dist[now] + edges[i].cost && edges[i].value) {
            int f = dfs(v, min(flow - flow_sum, edges[i].value));
            if (f) {
                edges[i].value -= f;
                edges[i ^ 1].value += f;
                min_cost += f * edges[i].cost;
                flow_sum += f;
                if (flow_sum == flow) {
                    break;
                }
            }
        }
    }
    visited[now] = false;
    return flow_sum;
}

void dinic() {
    while (spfa()) {
        memcpy(cur, head, sizeof(head));
        dfs(source, INF);
    }
}

int main() {
    int n, m;
    cin >> n >> m;

    for (int i = 0; i < m; i++) {
        int raw_from, to, cost;
        cin >> raw_from >> to >> cost;
        if (raw_from != 1){
            raw_from += n;
        }
        add_edge(raw_from, to, 1, cost);
    }
    for (int i = 2; i < n; ++i) {
        add_edge(i, i + n, 1, 0);
    }
    source = 1;
    target = n;

    dinic();

    cout << max_flow << " " << min_cost << endl;
    return 0;
}
