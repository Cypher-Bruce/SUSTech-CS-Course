#include <iostream>
#include <cstring>
#include <queue>

using namespace std;
const int MAX_NODE = 200;
const int MAX_EDGE = 10200;
const int INF = 0x3f3f3f3f;
int source, target;
long long max_flow = 0, required_flow = 0;

struct Edge {
    int to, next, value;
};
Edge edges[MAX_EDGE * 2 + 2 + MAX_NODE * 2];

int head[MAX_NODE + 2], edgeCount = 2;
int cur[MAX_NODE + 2];
void add_edge(int from, int to, int capacity) {
    edges[edgeCount].to = to;
    edges[edgeCount].value = capacity;
    edges[edgeCount].next = head[from];
    head[from] = edgeCount;
    edgeCount++;

    edges[edgeCount].to = from;
    edges[edgeCount].value = 0;
    edges[edgeCount].next = head[to];
    head[to] = edgeCount;
    edgeCount++;
}

int depth[MAX_NODE + 2], demand[MAX_NODE + 2], lb[MAX_EDGE * 2 + 2 + MAX_NODE * 2];
bool bfs() {
    memset(depth, 0x3f, sizeof(depth));
    queue<int> q;
    q.push(source);
    depth[source] = 0;
    while (!q.empty()) {
        int current = q.front();
        q.pop();
        for (int i = head[current]; i; i = edges[i].next) {
            int to = edges[i].to;
            if (edges[i].value > 0 && depth[to] == INF) {
                depth[to] = depth[current] + 1;
                q.push(to);
            }
        }
    }
    return depth[target] != INF;
}

int dfs(int now, int flow) {
    if (now == target) {
        max_flow += flow;
        return flow;
    }
    int flow_sum = 0;
    for (int &i = cur[now]; i; i = edges[i].next) {
        int v = edges[i].to;
        if (edges[i].value > 0 && depth[v] == depth[now] + 1) {
            int min_flow = dfs(v, min(flow - flow_sum, edges[i].value));
            if (min_flow > 0) {
                edges[i].value -= min_flow;
                edges[i ^ 1].value += min_flow;
                flow_sum += min_flow;
            }
            if (flow_sum == flow) {
                break;
            }
        }
    }
    return flow_sum;
}

void dinic() {
    while (bfs()) {
        memcpy(cur, head, sizeof(head));
        dfs(source, INF);
    }
}

int main() {
    int n, m;
    cin >> n >> m;

    for (int i = 0; i < m; i++) {
        int from, to, lower, upper;
        cin >> from >> to >> lower >> upper;
        demand[from] -= lower;
        demand[to] += lower;
        lb[edgeCount] = lower;
        add_edge(from, to, upper - lower);
    }
    source = 0;
    target = n + 1;
    for (int i = 1; i <= n; i++) {
        if (demand[i] > 0) {
            add_edge(source, i, demand[i]);
            required_flow += demand[i];
        } else if (demand[i] < 0) {
            add_edge(i, target, -demand[i]);
        }
    }

    dinic();

    if (max_flow >= required_flow) {
        cout << "YES" << endl;
        for (int i = 2; i < 2 * m + 2; i += 2) {
            cout << edges[i ^ 1].value + lb[i] << endl;
        }
    } else {
        cout << "NO" << endl;
    }
    return 0;
}
