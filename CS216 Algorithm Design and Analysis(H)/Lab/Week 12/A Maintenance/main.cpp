#include <iostream>
#include <cstring>
#include <queue>

using namespace std;
const int MAX_N = 400;
const int MAX_M = 1500;
const int INF = 0x3f3f3f3f;
int source, target;
long long max_flow = 0, required_flow = 0;

struct Edge {
    int to, next, value;
};
Edge edges[MAX_N * 604 + MAX_M * 4 + 8];

int head[MAX_N + MAX_M + 4], edgeCount = 2;
int cur[MAX_N + MAX_M + 4];
int worker_lb[MAX_M], worker_ub[MAX_M];
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

int depth[MAX_N + MAX_M + 4], demand[MAX_N + MAX_M + 4];
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
    source = 0;
    target = n + m + 3;

    for (int i = 0; i < m; i++) {
        cin >> worker_lb[i];
    }
    for (int i = 0; i < n; i++) {
        int s, t;
        cin >> s >> t;
        for (int j = 0; j < s; j++) {
            int worker, lb, ub;
            cin >> worker >> lb >> ub;
            add_edge(worker + 2, i + m + 2, ub - lb);
            demand[i + m + 2] += lb;
            demand[worker + 2] -= lb;
            worker_ub[worker] += ub;
        }
        add_edge(i + m + 2, n + m + 2, t);
    }
    for (int i = 0; i < m; i++) {
        if (worker_lb[i] > worker_ub[i]) {
            cout << -1 << endl;
            return 0;
        }
        add_edge(1, i + 2, worker_ub[i] - worker_lb[i]);
        demand[1] -= worker_lb[i];
        demand[i + 2] += worker_lb[i];
    }
    for (int i = 1; i < n + m + 3; i++) {
        if (demand[i] > 0) {
            add_edge(source, i, demand[i]);
            required_flow += demand[i];
        } else if (demand[i] < 0) {
            add_edge(i, target, -demand[i]);
        }
    }
    add_edge(n + m + 2, 1, INF);

    dinic();

    if (max_flow >= required_flow) {
        int ans = edges[edgeCount - 1].value;
        max_flow = 0;
        source = 1;
        target = n + m + 2;
        edges[edgeCount - 1].value = 0;
        edges[edgeCount - 2].value = 0;
        dinic();
        cout << max_flow + ans << endl;
    } else {
        cout << -1 << endl;
    }
    return 0;
}
